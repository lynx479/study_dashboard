create table public.user_dashboard (
    user_id uuid primary key references auth.users (id) on delete cascade,
    tasks jsonb not null default '[]'::jsonb check (jsonb_typeof(tasks) = 'array'),
    lessons jsonb not null default '[]'::jsonb check (jsonb_typeof(lessons) = 'array'),
    completed_sessions integer not null default 0 check (completed_sessions >= 0),
    focus_minutes integer not null default 0 check (focus_minutes >= 0),
    updated_at timestamptz not null default now()
);

alter table public.user_dashboard enable row level security;

create policy "Users can read their own dashboard"
    on public.user_dashboard
    for select
    to authenticated
    using ((select auth.uid()) = user_id);

create policy "Users can create their own dashboard"
    on public.user_dashboard
    for insert
    to authenticated
    with check ((select auth.uid()) = user_id);

create policy "Users can update their own dashboard"
    on public.user_dashboard
    for update
    to authenticated
    using ((select auth.uid()) = user_id)
    with check ((select auth.uid()) = user_id);

create policy "Users can delete their own dashboard"
    on public.user_dashboard
    for delete
    to authenticated
    using ((select auth.uid()) = user_id);

create index user_dashboard_updated_at_idx
    on public.user_dashboard (updated_at desc);

alter publication supabase_realtime add table public.user_dashboard;
