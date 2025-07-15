# Supabase Integration Guide

## Environment Variables

The Flutter app reads `SUPABASE_URL` and `SUPABASE_KEY` from the `.env` file, which should reside at the app root. The app expects these variables to be set with your Supabase project's credentials.

## Setup Instructions

1. Install dependencies (in project root):

   ```sh
   flutter pub get
   ```

2. Add `.env` file:

   ```
   SUPABASE_URL=your_supabase_url
   SUPABASE_KEY=your_supabase_anon_key
   ```

3. Ensure the following table exists in your Supabase project for notes:

   ```sql
   create table notes (
     id uuid primary key default uuid_generate_v4(),
     title text not null,
     content text not null,
     tags text[] not null,
     folder text,
     created_at timestamptz not null default now(),
     updated_at timestamptz
   );
   ```

   If you plan to add authentication, configure Supabase Auth accordingly. This app assumes public access to the notes table (for demo/minimal setup).

## Flutter Packages

- [supabase_flutter](https://pub.dev/packages/supabase_flutter)
- [provider](https://pub.dev/packages/provider) (state management)
- [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) (.env support)

## Launching the App

Run the app normally with:

```
flutter run
```

## Theming and UI

- Light, minimalistic, modern
- Primary: `#1976D2`
- Accent: `#4CAF50`
- Secondary: `#FFC107`

## Features Supported

- Create, Edit, Delete, List notes
- Search notes
- Organize notes by tags and folders (navigation drawer)
- Supabase backend integration 
