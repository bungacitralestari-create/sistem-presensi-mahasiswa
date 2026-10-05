-- Jalankan SEKALI setelah profile admin berhasil dibuat.
alter table public.profiles enable row level security;
drop policy if exists "users can read own profile" on public.profiles;
create policy "users can read own profile"
on public.profiles for select
to authenticated
using (id = auth.uid());
