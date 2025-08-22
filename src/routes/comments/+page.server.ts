import type { PageServerLoad } from './$types';
import { supabase } from '$lib/supabaseClient';

type Comment = {
  id: number;
  created_at: string;
  username: string;
  text: string;
};

export const load: PageServerLoad = async () => {
  const { data, error } = await supabase
    .from('comment')
    .select<'*', Comment>();

  if (error) {
    console.error('Error loading comments:', error.message);
    return { comments: [] };
  }

  return {
    comments: data ?? [],
  };
};