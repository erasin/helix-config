(require-builtin helix/core/static as helix.static.)
(provide no_op)
(define (no_op)
    (helix.static.no_op *helix.cx*))

(provide move_char_left)
(define (move_char_left)
    (helix.static.move_char_left *helix.cx*))

(provide move_char_right)
(define (move_char_right)
    (helix.static.move_char_right *helix.cx*))

(provide move_line_up)
(define (move_line_up)
    (helix.static.move_line_up *helix.cx*))

(provide move_line_down)
(define (move_line_down)
    (helix.static.move_line_down *helix.cx*))

(provide move_visual_line_up)
(define (move_visual_line_up)
    (helix.static.move_visual_line_up *helix.cx*))

(provide move_visual_line_down)
(define (move_visual_line_down)
    (helix.static.move_visual_line_down *helix.cx*))

(provide extend_char_left)
(define (extend_char_left)
    (helix.static.extend_char_left *helix.cx*))

(provide extend_char_right)
(define (extend_char_right)
    (helix.static.extend_char_right *helix.cx*))

(provide extend_line_up)
(define (extend_line_up)
    (helix.static.extend_line_up *helix.cx*))

(provide extend_line_down)
(define (extend_line_down)
    (helix.static.extend_line_down *helix.cx*))

(provide extend_visual_line_up)
(define (extend_visual_line_up)
    (helix.static.extend_visual_line_up *helix.cx*))

(provide extend_visual_line_down)
(define (extend_visual_line_down)
    (helix.static.extend_visual_line_down *helix.cx*))

(provide copy_selection_on_next_line)
(define (copy_selection_on_next_line)
    (helix.static.copy_selection_on_next_line *helix.cx*))

(provide copy_selection_on_prev_line)
(define (copy_selection_on_prev_line)
    (helix.static.copy_selection_on_prev_line *helix.cx*))

(provide move_next_word_start)
(define (move_next_word_start)
    (helix.static.move_next_word_start *helix.cx*))

(provide move_prev_word_start)
(define (move_prev_word_start)
    (helix.static.move_prev_word_start *helix.cx*))

(provide move_next_word_end)
(define (move_next_word_end)
    (helix.static.move_next_word_end *helix.cx*))

(provide move_prev_word_end)
(define (move_prev_word_end)
    (helix.static.move_prev_word_end *helix.cx*))

(provide move_next_long_word_start)
(define (move_next_long_word_start)
    (helix.static.move_next_long_word_start *helix.cx*))

(provide move_prev_long_word_start)
(define (move_prev_long_word_start)
    (helix.static.move_prev_long_word_start *helix.cx*))

(provide move_next_long_word_end)
(define (move_next_long_word_end)
    (helix.static.move_next_long_word_end *helix.cx*))

(provide move_prev_long_word_end)
(define (move_prev_long_word_end)
    (helix.static.move_prev_long_word_end *helix.cx*))

(provide move_parent_node_end)
(define (move_parent_node_end)
    (helix.static.move_parent_node_end *helix.cx*))

(provide move_parent_node_start)
(define (move_parent_node_start)
    (helix.static.move_parent_node_start *helix.cx*))

(provide extend_next_word_start)
(define (extend_next_word_start)
    (helix.static.extend_next_word_start *helix.cx*))

(provide extend_prev_word_start)
(define (extend_prev_word_start)
    (helix.static.extend_prev_word_start *helix.cx*))

(provide extend_next_word_end)
(define (extend_next_word_end)
    (helix.static.extend_next_word_end *helix.cx*))

(provide extend_prev_word_end)
(define (extend_prev_word_end)
    (helix.static.extend_prev_word_end *helix.cx*))

(provide extend_next_long_word_start)
(define (extend_next_long_word_start)
    (helix.static.extend_next_long_word_start *helix.cx*))

(provide extend_prev_long_word_start)
(define (extend_prev_long_word_start)
    (helix.static.extend_prev_long_word_start *helix.cx*))

(provide extend_next_long_word_end)
(define (extend_next_long_word_end)
    (helix.static.extend_next_long_word_end *helix.cx*))

(provide extend_prev_long_word_end)
(define (extend_prev_long_word_end)
    (helix.static.extend_prev_long_word_end *helix.cx*))

(provide extend_parent_node_end)
(define (extend_parent_node_end)
    (helix.static.extend_parent_node_end *helix.cx*))

(provide extend_parent_node_start)
(define (extend_parent_node_start)
    (helix.static.extend_parent_node_start *helix.cx*))

(provide find_till_char)
(define (find_till_char)
    (helix.static.find_till_char *helix.cx*))

(provide find_next_char)
(define (find_next_char)
    (helix.static.find_next_char *helix.cx*))

(provide extend_till_char)
(define (extend_till_char)
    (helix.static.extend_till_char *helix.cx*))

(provide extend_next_char)
(define (extend_next_char)
    (helix.static.extend_next_char *helix.cx*))

(provide till_prev_char)
(define (till_prev_char)
    (helix.static.till_prev_char *helix.cx*))

(provide find_prev_char)
(define (find_prev_char)
    (helix.static.find_prev_char *helix.cx*))

(provide extend_till_prev_char)
(define (extend_till_prev_char)
    (helix.static.extend_till_prev_char *helix.cx*))

(provide extend_prev_char)
(define (extend_prev_char)
    (helix.static.extend_prev_char *helix.cx*))

(provide repeat_last_motion)
(define (repeat_last_motion)
    (helix.static.repeat_last_motion *helix.cx*))

(provide replace)
(define (replace)
    (helix.static.replace *helix.cx*))

(provide switch_case)
(define (switch_case)
    (helix.static.switch_case *helix.cx*))

(provide switch_to_uppercase)
(define (switch_to_uppercase)
    (helix.static.switch_to_uppercase *helix.cx*))

(provide switch_to_lowercase)
(define (switch_to_lowercase)
    (helix.static.switch_to_lowercase *helix.cx*))

(provide page_up)
(define (page_up)
    (helix.static.page_up *helix.cx*))

(provide page_down)
(define (page_down)
    (helix.static.page_down *helix.cx*))

(provide half_page_up)
(define (half_page_up)
    (helix.static.half_page_up *helix.cx*))

(provide half_page_down)
(define (half_page_down)
    (helix.static.half_page_down *helix.cx*))

(provide page_cursor_up)
(define (page_cursor_up)
    (helix.static.page_cursor_up *helix.cx*))

(provide page_cursor_down)
(define (page_cursor_down)
    (helix.static.page_cursor_down *helix.cx*))

(provide page_cursor_half_up)
(define (page_cursor_half_up)
    (helix.static.page_cursor_half_up *helix.cx*))

(provide page_cursor_half_down)
(define (page_cursor_half_down)
    (helix.static.page_cursor_half_down *helix.cx*))

(provide select_all)
(define (select_all)
    (helix.static.select_all *helix.cx*))

(provide select_regex)
(define (select_regex)
    (helix.static.select_regex *helix.cx*))

(provide split_selection)
(define (split_selection)
    (helix.static.split_selection *helix.cx*))

(provide split_selection_on_newline)
(define (split_selection_on_newline)
    (helix.static.split_selection_on_newline *helix.cx*))

(provide merge_selections)
(define (merge_selections)
    (helix.static.merge_selections *helix.cx*))

(provide merge_consecutive_selections)
(define (merge_consecutive_selections)
    (helix.static.merge_consecutive_selections *helix.cx*))

(provide search)
(define (search)
    (helix.static.search *helix.cx*))

(provide rsearch)
(define (rsearch)
    (helix.static.rsearch *helix.cx*))

(provide search_next)
(define (search_next)
    (helix.static.search_next *helix.cx*))

(provide search_prev)
(define (search_prev)
    (helix.static.search_prev *helix.cx*))

(provide extend_search_next)
(define (extend_search_next)
    (helix.static.extend_search_next *helix.cx*))

(provide extend_search_prev)
(define (extend_search_prev)
    (helix.static.extend_search_prev *helix.cx*))

(provide search_selection)
(define (search_selection)
    (helix.static.search_selection *helix.cx*))

(provide make_search_word_bounded)
(define (make_search_word_bounded)
    (helix.static.make_search_word_bounded *helix.cx*))

(provide global_search)
(define (global_search)
    (helix.static.global_search *helix.cx*))

(provide extend_line)
(define (extend_line)
    (helix.static.extend_line *helix.cx*))

(provide extend_line_below)
(define (extend_line_below)
    (helix.static.extend_line_below *helix.cx*))

(provide extend_line_above)
(define (extend_line_above)
    (helix.static.extend_line_above *helix.cx*))

(provide select_line_above)
(define (select_line_above)
    (helix.static.select_line_above *helix.cx*))

(provide select_line_below)
(define (select_line_below)
    (helix.static.select_line_below *helix.cx*))

(provide extend_to_line_bounds)
(define (extend_to_line_bounds)
    (helix.static.extend_to_line_bounds *helix.cx*))

(provide shrink_to_line_bounds)
(define (shrink_to_line_bounds)
    (helix.static.shrink_to_line_bounds *helix.cx*))

(provide delete_selection)
(define (delete_selection)
    (helix.static.delete_selection *helix.cx*))

(provide delete_selection_noyank)
(define (delete_selection_noyank)
    (helix.static.delete_selection_noyank *helix.cx*))

(provide change_selection)
(define (change_selection)
    (helix.static.change_selection *helix.cx*))

(provide change_selection_noyank)
(define (change_selection_noyank)
    (helix.static.change_selection_noyank *helix.cx*))

(provide collapse_selection)
(define (collapse_selection)
    (helix.static.collapse_selection *helix.cx*))

(provide flip_selections)
(define (flip_selections)
    (helix.static.flip_selections *helix.cx*))

(provide ensure_selections_forward)
(define (ensure_selections_forward)
    (helix.static.ensure_selections_forward *helix.cx*))

(provide insert_mode)
(define (insert_mode)
    (helix.static.insert_mode *helix.cx*))

(provide append_mode)
(define (append_mode)
    (helix.static.append_mode *helix.cx*))

(provide command_mode)
(define (command_mode)
    (helix.static.command_mode *helix.cx*))

(provide file_picker)
(define (file_picker)
    (helix.static.file_picker *helix.cx*))

(provide file_picker_in_current_buffer_directory)
(define (file_picker_in_current_buffer_directory)
    (helix.static.file_picker_in_current_buffer_directory *helix.cx*))

(provide file_picker_in_current_directory)
(define (file_picker_in_current_directory)
    (helix.static.file_picker_in_current_directory *helix.cx*))

(provide code_action)
(define (code_action)
    (helix.static.code_action *helix.cx*))

(provide buffer_picker)
(define (buffer_picker)
    (helix.static.buffer_picker *helix.cx*))

(provide jumplist_picker)
(define (jumplist_picker)
    (helix.static.jumplist_picker *helix.cx*))

(provide symbol_picker)
(define (symbol_picker)
    (helix.static.symbol_picker *helix.cx*))

(provide changed_file_picker)
(define (changed_file_picker)
    (helix.static.changed_file_picker *helix.cx*))

(provide select_references_to_symbol_under_cursor)
(define (select_references_to_symbol_under_cursor)
    (helix.static.select_references_to_symbol_under_cursor *helix.cx*))

(provide workspace_symbol_picker)
(define (workspace_symbol_picker)
    (helix.static.workspace_symbol_picker *helix.cx*))

(provide diagnostics_picker)
(define (diagnostics_picker)
    (helix.static.diagnostics_picker *helix.cx*))

(provide workspace_diagnostics_picker)
(define (workspace_diagnostics_picker)
    (helix.static.workspace_diagnostics_picker *helix.cx*))

(provide last_picker)
(define (last_picker)
    (helix.static.last_picker *helix.cx*))

(provide insert_at_line_start)
(define (insert_at_line_start)
    (helix.static.insert_at_line_start *helix.cx*))

(provide insert_at_line_end)
(define (insert_at_line_end)
    (helix.static.insert_at_line_end *helix.cx*))

(provide open_below)
(define (open_below)
    (helix.static.open_below *helix.cx*))

(provide open_above)
(define (open_above)
    (helix.static.open_above *helix.cx*))

(provide normal_mode)
(define (normal_mode)
    (helix.static.normal_mode *helix.cx*))

(provide select_mode)
(define (select_mode)
    (helix.static.select_mode *helix.cx*))

(provide exit_select_mode)
(define (exit_select_mode)
    (helix.static.exit_select_mode *helix.cx*))

(provide goto_definition)
(define (goto_definition)
    (helix.static.goto_definition *helix.cx*))

(provide goto_declaration)
(define (goto_declaration)
    (helix.static.goto_declaration *helix.cx*))

(provide add_newline_above)
(define (add_newline_above)
    (helix.static.add_newline_above *helix.cx*))

(provide add_newline_below)
(define (add_newline_below)
    (helix.static.add_newline_below *helix.cx*))

(provide goto_type_definition)
(define (goto_type_definition)
    (helix.static.goto_type_definition *helix.cx*))

(provide goto_implementation)
(define (goto_implementation)
    (helix.static.goto_implementation *helix.cx*))

(provide goto_file_start)
(define (goto_file_start)
    (helix.static.goto_file_start *helix.cx*))

(provide goto_file_end)
(define (goto_file_end)
    (helix.static.goto_file_end *helix.cx*))

(provide goto_file)
(define (goto_file)
    (helix.static.goto_file *helix.cx*))

(provide goto_file_hsplit)
(define (goto_file_hsplit)
    (helix.static.goto_file_hsplit *helix.cx*))

(provide goto_file_vsplit)
(define (goto_file_vsplit)
    (helix.static.goto_file_vsplit *helix.cx*))

(provide goto_reference)
(define (goto_reference)
    (helix.static.goto_reference *helix.cx*))

(provide goto_window_top)
(define (goto_window_top)
    (helix.static.goto_window_top *helix.cx*))

(provide goto_window_center)
(define (goto_window_center)
    (helix.static.goto_window_center *helix.cx*))

(provide goto_window_bottom)
(define (goto_window_bottom)
    (helix.static.goto_window_bottom *helix.cx*))

(provide goto_last_accessed_file)
(define (goto_last_accessed_file)
    (helix.static.goto_last_accessed_file *helix.cx*))

(provide goto_last_modified_file)
(define (goto_last_modified_file)
    (helix.static.goto_last_modified_file *helix.cx*))

(provide goto_last_modification)
(define (goto_last_modification)
    (helix.static.goto_last_modification *helix.cx*))

(provide goto_line)
(define (goto_line)
    (helix.static.goto_line *helix.cx*))

(provide goto_last_line)
(define (goto_last_line)
    (helix.static.goto_last_line *helix.cx*))

(provide goto_first_diag)
(define (goto_first_diag)
    (helix.static.goto_first_diag *helix.cx*))

(provide goto_last_diag)
(define (goto_last_diag)
    (helix.static.goto_last_diag *helix.cx*))

(provide goto_next_diag)
(define (goto_next_diag)
    (helix.static.goto_next_diag *helix.cx*))

(provide goto_prev_diag)
(define (goto_prev_diag)
    (helix.static.goto_prev_diag *helix.cx*))

(provide goto_next_change)
(define (goto_next_change)
    (helix.static.goto_next_change *helix.cx*))

(provide goto_prev_change)
(define (goto_prev_change)
    (helix.static.goto_prev_change *helix.cx*))

(provide goto_first_change)
(define (goto_first_change)
    (helix.static.goto_first_change *helix.cx*))

(provide goto_last_change)
(define (goto_last_change)
    (helix.static.goto_last_change *helix.cx*))

(provide goto_line_start)
(define (goto_line_start)
    (helix.static.goto_line_start *helix.cx*))

(provide goto_line_end)
(define (goto_line_end)
    (helix.static.goto_line_end *helix.cx*))

(provide goto_next_buffer)
(define (goto_next_buffer)
    (helix.static.goto_next_buffer *helix.cx*))

(provide goto_previous_buffer)
(define (goto_previous_buffer)
    (helix.static.goto_previous_buffer *helix.cx*))

(provide goto_line_end_newline)
(define (goto_line_end_newline)
    (helix.static.goto_line_end_newline *helix.cx*))

(provide goto_first_nonwhitespace)
(define (goto_first_nonwhitespace)
    (helix.static.goto_first_nonwhitespace *helix.cx*))

(provide trim_selections)
(define (trim_selections)
    (helix.static.trim_selections *helix.cx*))

(provide extend_to_line_start)
(define (extend_to_line_start)
    (helix.static.extend_to_line_start *helix.cx*))

(provide extend_to_first_nonwhitespace)
(define (extend_to_first_nonwhitespace)
    (helix.static.extend_to_first_nonwhitespace *helix.cx*))

(provide extend_to_line_end)
(define (extend_to_line_end)
    (helix.static.extend_to_line_end *helix.cx*))

(provide extend_to_line_end_newline)
(define (extend_to_line_end_newline)
    (helix.static.extend_to_line_end_newline *helix.cx*))

(provide signature_help)
(define (signature_help)
    (helix.static.signature_help *helix.cx*))

(provide smart_tab)
(define (smart_tab)
    (helix.static.smart_tab *helix.cx*))

(provide insert_tab)
(define (insert_tab)
    (helix.static.insert_tab *helix.cx*))

(provide insert_newline)
(define (insert_newline)
    (helix.static.insert_newline *helix.cx*))

(provide delete_char_backward)
(define (delete_char_backward)
    (helix.static.delete_char_backward *helix.cx*))

(provide delete_char_forward)
(define (delete_char_forward)
    (helix.static.delete_char_forward *helix.cx*))

(provide delete_word_backward)
(define (delete_word_backward)
    (helix.static.delete_word_backward *helix.cx*))

(provide delete_word_forward)
(define (delete_word_forward)
    (helix.static.delete_word_forward *helix.cx*))

(provide kill_to_line_start)
(define (kill_to_line_start)
    (helix.static.kill_to_line_start *helix.cx*))

(provide kill_to_line_end)
(define (kill_to_line_end)
    (helix.static.kill_to_line_end *helix.cx*))

(provide undo)
(define (undo)
    (helix.static.undo *helix.cx*))

(provide redo)
(define (redo)
    (helix.static.redo *helix.cx*))

(provide earlier)
(define (earlier)
    (helix.static.earlier *helix.cx*))

(provide later)
(define (later)
    (helix.static.later *helix.cx*))

(provide commit_undo_checkpoint)
(define (commit_undo_checkpoint)
    (helix.static.commit_undo_checkpoint *helix.cx*))

(provide yank)
(define (yank)
    (helix.static.yank *helix.cx*))

(provide yank_to_clipboard)
(define (yank_to_clipboard)
    (helix.static.yank_to_clipboard *helix.cx*))

(provide yank_to_primary_clipboard)
(define (yank_to_primary_clipboard)
    (helix.static.yank_to_primary_clipboard *helix.cx*))

(provide yank_joined)
(define (yank_joined)
    (helix.static.yank_joined *helix.cx*))

(provide yank_joined_to_clipboard)
(define (yank_joined_to_clipboard)
    (helix.static.yank_joined_to_clipboard *helix.cx*))

(provide yank_main_selection_to_clipboard)
(define (yank_main_selection_to_clipboard)
    (helix.static.yank_main_selection_to_clipboard *helix.cx*))

(provide yank_joined_to_primary_clipboard)
(define (yank_joined_to_primary_clipboard)
    (helix.static.yank_joined_to_primary_clipboard *helix.cx*))

(provide yank_main_selection_to_primary_clipboard)
(define (yank_main_selection_to_primary_clipboard)
    (helix.static.yank_main_selection_to_primary_clipboard *helix.cx*))

(provide replace_with_yanked)
(define (replace_with_yanked)
    (helix.static.replace_with_yanked *helix.cx*))

(provide replace_selections_with_clipboard)
(define (replace_selections_with_clipboard)
    (helix.static.replace_selections_with_clipboard *helix.cx*))

(provide replace_selections_with_primary_clipboard)
(define (replace_selections_with_primary_clipboard)
    (helix.static.replace_selections_with_primary_clipboard *helix.cx*))

(provide paste_after)
(define (paste_after)
    (helix.static.paste_after *helix.cx*))

(provide paste_before)
(define (paste_before)
    (helix.static.paste_before *helix.cx*))

(provide paste_clipboard_after)
(define (paste_clipboard_after)
    (helix.static.paste_clipboard_after *helix.cx*))

(provide paste_clipboard_before)
(define (paste_clipboard_before)
    (helix.static.paste_clipboard_before *helix.cx*))

(provide paste_primary_clipboard_after)
(define (paste_primary_clipboard_after)
    (helix.static.paste_primary_clipboard_after *helix.cx*))

(provide paste_primary_clipboard_before)
(define (paste_primary_clipboard_before)
    (helix.static.paste_primary_clipboard_before *helix.cx*))

(provide indent)
(define (indent)
    (helix.static.indent *helix.cx*))

(provide unindent)
(define (unindent)
    (helix.static.unindent *helix.cx*))

(provide format_selections)
(define (format_selections)
    (helix.static.format_selections *helix.cx*))

(provide join_selections)
(define (join_selections)
    (helix.static.join_selections *helix.cx*))

(provide join_selections_space)
(define (join_selections_space)
    (helix.static.join_selections_space *helix.cx*))

(provide keep_selections)
(define (keep_selections)
    (helix.static.keep_selections *helix.cx*))

(provide remove_selections)
(define (remove_selections)
    (helix.static.remove_selections *helix.cx*))

(provide align_selections)
(define (align_selections)
    (helix.static.align_selections *helix.cx*))

(provide keep_primary_selection)
(define (keep_primary_selection)
    (helix.static.keep_primary_selection *helix.cx*))

(provide remove_primary_selection)
(define (remove_primary_selection)
    (helix.static.remove_primary_selection *helix.cx*))

(provide completion)
(define (completion)
    (helix.static.completion *helix.cx*))

(provide hover)
(define (hover)
    (helix.static.hover *helix.cx*))

(provide toggle_comments)
(define (toggle_comments)
    (helix.static.toggle_comments *helix.cx*))

(provide toggle_line_comments)
(define (toggle_line_comments)
    (helix.static.toggle_line_comments *helix.cx*))

(provide toggle_block_comments)
(define (toggle_block_comments)
    (helix.static.toggle_block_comments *helix.cx*))

(provide rotate_selections_forward)
(define (rotate_selections_forward)
    (helix.static.rotate_selections_forward *helix.cx*))

(provide rotate_selections_backward)
(define (rotate_selections_backward)
    (helix.static.rotate_selections_backward *helix.cx*))

(provide rotate_selection_contents_forward)
(define (rotate_selection_contents_forward)
    (helix.static.rotate_selection_contents_forward *helix.cx*))

(provide rotate_selection_contents_backward)
(define (rotate_selection_contents_backward)
    (helix.static.rotate_selection_contents_backward *helix.cx*))

(provide reverse_selection_contents)
(define (reverse_selection_contents)
    (helix.static.reverse_selection_contents *helix.cx*))

(provide expand_selection)
(define (expand_selection)
    (helix.static.expand_selection *helix.cx*))

(provide shrink_selection)
(define (shrink_selection)
    (helix.static.shrink_selection *helix.cx*))

(provide select_next_sibling)
(define (select_next_sibling)
    (helix.static.select_next_sibling *helix.cx*))

(provide select_prev_sibling)
(define (select_prev_sibling)
    (helix.static.select_prev_sibling *helix.cx*))

(provide select_all_siblings)
(define (select_all_siblings)
    (helix.static.select_all_siblings *helix.cx*))

(provide select_all_children)
(define (select_all_children)
    (helix.static.select_all_children *helix.cx*))

(provide jump_forward)
(define (jump_forward)
    (helix.static.jump_forward *helix.cx*))

(provide jump_backward)
(define (jump_backward)
    (helix.static.jump_backward *helix.cx*))

(provide save_selection)
(define (save_selection)
    (helix.static.save_selection *helix.cx*))

(provide jump_view_right)
(define (jump_view_right)
    (helix.static.jump_view_right *helix.cx*))

(provide jump_view_left)
(define (jump_view_left)
    (helix.static.jump_view_left *helix.cx*))

(provide jump_view_up)
(define (jump_view_up)
    (helix.static.jump_view_up *helix.cx*))

(provide jump_view_down)
(define (jump_view_down)
    (helix.static.jump_view_down *helix.cx*))

(provide swap_view_right)
(define (swap_view_right)
    (helix.static.swap_view_right *helix.cx*))

(provide swap_view_left)
(define (swap_view_left)
    (helix.static.swap_view_left *helix.cx*))

(provide swap_view_up)
(define (swap_view_up)
    (helix.static.swap_view_up *helix.cx*))

(provide swap_view_down)
(define (swap_view_down)
    (helix.static.swap_view_down *helix.cx*))

(provide transpose_view)
(define (transpose_view)
    (helix.static.transpose_view *helix.cx*))

(provide rotate_view)
(define (rotate_view)
    (helix.static.rotate_view *helix.cx*))

(provide rotate_view_reverse)
(define (rotate_view_reverse)
    (helix.static.rotate_view_reverse *helix.cx*))

(provide hsplit)
(define (hsplit)
    (helix.static.hsplit *helix.cx*))

(provide hsplit_new)
(define (hsplit_new)
    (helix.static.hsplit_new *helix.cx*))

(provide vsplit)
(define (vsplit)
    (helix.static.vsplit *helix.cx*))

(provide vsplit_new)
(define (vsplit_new)
    (helix.static.vsplit_new *helix.cx*))

(provide wclose)
(define (wclose)
    (helix.static.wclose *helix.cx*))

(provide wonly)
(define (wonly)
    (helix.static.wonly *helix.cx*))

(provide select_register)
(define (select_register)
    (helix.static.select_register *helix.cx*))

(provide insert_register)
(define (insert_register)
    (helix.static.insert_register *helix.cx*))

(provide align_view_middle)
(define (align_view_middle)
    (helix.static.align_view_middle *helix.cx*))

(provide align_view_top)
(define (align_view_top)
    (helix.static.align_view_top *helix.cx*))

(provide align_view_center)
(define (align_view_center)
    (helix.static.align_view_center *helix.cx*))

(provide align_view_bottom)
(define (align_view_bottom)
    (helix.static.align_view_bottom *helix.cx*))

(provide scroll_up)
(define (scroll_up)
    (helix.static.scroll_up *helix.cx*))

(provide scroll_down)
(define (scroll_down)
    (helix.static.scroll_down *helix.cx*))

(provide match_brackets)
(define (match_brackets)
    (helix.static.match_brackets *helix.cx*))

(provide surround_add)
(define (surround_add)
    (helix.static.surround_add *helix.cx*))

(provide surround_replace)
(define (surround_replace)
    (helix.static.surround_replace *helix.cx*))

(provide surround_delete)
(define (surround_delete)
    (helix.static.surround_delete *helix.cx*))

(provide select_textobject_around)
(define (select_textobject_around)
    (helix.static.select_textobject_around *helix.cx*))

(provide select_textobject_inner)
(define (select_textobject_inner)
    (helix.static.select_textobject_inner *helix.cx*))

(provide goto_next_function)
(define (goto_next_function)
    (helix.static.goto_next_function *helix.cx*))

(provide goto_prev_function)
(define (goto_prev_function)
    (helix.static.goto_prev_function *helix.cx*))

(provide goto_next_class)
(define (goto_next_class)
    (helix.static.goto_next_class *helix.cx*))

(provide goto_prev_class)
(define (goto_prev_class)
    (helix.static.goto_prev_class *helix.cx*))

(provide goto_next_parameter)
(define (goto_next_parameter)
    (helix.static.goto_next_parameter *helix.cx*))

(provide goto_prev_parameter)
(define (goto_prev_parameter)
    (helix.static.goto_prev_parameter *helix.cx*))

(provide goto_next_comment)
(define (goto_next_comment)
    (helix.static.goto_next_comment *helix.cx*))

(provide goto_prev_comment)
(define (goto_prev_comment)
    (helix.static.goto_prev_comment *helix.cx*))

(provide goto_next_test)
(define (goto_next_test)
    (helix.static.goto_next_test *helix.cx*))

(provide goto_prev_test)
(define (goto_prev_test)
    (helix.static.goto_prev_test *helix.cx*))

(provide goto_next_entry)
(define (goto_next_entry)
    (helix.static.goto_next_entry *helix.cx*))

(provide goto_prev_entry)
(define (goto_prev_entry)
    (helix.static.goto_prev_entry *helix.cx*))

(provide goto_next_paragraph)
(define (goto_next_paragraph)
    (helix.static.goto_next_paragraph *helix.cx*))

(provide goto_prev_paragraph)
(define (goto_prev_paragraph)
    (helix.static.goto_prev_paragraph *helix.cx*))

(provide dap_launch)
(define (dap_launch)
    (helix.static.dap_launch *helix.cx*))

(provide dap_restart)
(define (dap_restart)
    (helix.static.dap_restart *helix.cx*))

(provide dap_toggle_breakpoint)
(define (dap_toggle_breakpoint)
    (helix.static.dap_toggle_breakpoint *helix.cx*))

(provide dap_continue)
(define (dap_continue)
    (helix.static.dap_continue *helix.cx*))

(provide dap_pause)
(define (dap_pause)
    (helix.static.dap_pause *helix.cx*))

(provide dap_step_in)
(define (dap_step_in)
    (helix.static.dap_step_in *helix.cx*))

(provide dap_step_out)
(define (dap_step_out)
    (helix.static.dap_step_out *helix.cx*))

(provide dap_next)
(define (dap_next)
    (helix.static.dap_next *helix.cx*))

(provide dap_variables)
(define (dap_variables)
    (helix.static.dap_variables *helix.cx*))

(provide dap_terminate)
(define (dap_terminate)
    (helix.static.dap_terminate *helix.cx*))

(provide dap_edit_condition)
(define (dap_edit_condition)
    (helix.static.dap_edit_condition *helix.cx*))

(provide dap_edit_log)
(define (dap_edit_log)
    (helix.static.dap_edit_log *helix.cx*))

(provide dap_switch_thread)
(define (dap_switch_thread)
    (helix.static.dap_switch_thread *helix.cx*))

(provide dap_switch_stack_frame)
(define (dap_switch_stack_frame)
    (helix.static.dap_switch_stack_frame *helix.cx*))

(provide dap_enable_exceptions)
(define (dap_enable_exceptions)
    (helix.static.dap_enable_exceptions *helix.cx*))

(provide dap_disable_exceptions)
(define (dap_disable_exceptions)
    (helix.static.dap_disable_exceptions *helix.cx*))

(provide shell_pipe)
(define (shell_pipe)
    (helix.static.shell_pipe *helix.cx*))

(provide shell_pipe_to)
(define (shell_pipe_to)
    (helix.static.shell_pipe_to *helix.cx*))

(provide shell_insert_output)
(define (shell_insert_output)
    (helix.static.shell_insert_output *helix.cx*))

(provide shell_append_output)
(define (shell_append_output)
    (helix.static.shell_append_output *helix.cx*))

(provide shell_keep_pipe)
(define (shell_keep_pipe)
    (helix.static.shell_keep_pipe *helix.cx*))

(provide suspend)
(define (suspend)
    (helix.static.suspend *helix.cx*))

(provide rename_symbol)
(define (rename_symbol)
    (helix.static.rename_symbol *helix.cx*))

(provide increment)
(define (increment)
    (helix.static.increment *helix.cx*))

(provide decrement)
(define (decrement)
    (helix.static.decrement *helix.cx*))

(provide record_macro)
(define (record_macro)
    (helix.static.record_macro *helix.cx*))

(provide replay_macro)
(define (replay_macro)
    (helix.static.replay_macro *helix.cx*))

(provide command_palette)
(define (command_palette)
    (helix.static.command_palette *helix.cx*))

(provide goto_word)
(define (goto_word)
    (helix.static.goto_word *helix.cx*))

(provide extend_to_word)
(define (extend_to_word)
    (helix.static.extend_to_word *helix.cx*))

(provide insert_char)
(define (insert_char arg)
    (helix.static.insert_char *helix.cx* arg))

(provide insert_string)
(define (insert_string arg)
    (helix.static.insert_string *helix.cx* arg))

(provide set-current-selection-object!)
(define (set-current-selection-object! arg)
    (helix.static.set-current-selection-object! *helix.cx* arg))

(provide regex-selection)
(define (regex-selection arg)
    (helix.static.regex-selection *helix.cx* arg))

(provide replace-selection-with)
(define (replace-selection-with arg)
    (helix.static.replace-selection-with *helix.cx* arg))

(provide cx->current-file)
(define (cx->current-file arg)
    (helix.static.cx->current-file *helix.cx* arg))

(provide current_selection)
(define (current_selection)
    (helix.static.current_selection *helix.cx*))

(provide load-buffer!)
(define (load-buffer!)
    (helix.static.load-buffer! *helix.cx*))

(provide current-highlighted-text!)
(define (current-highlighted-text!)
    (helix.static.current-highlighted-text! *helix.cx*))

(provide get-current-line-number)
(define (get-current-line-number)
    (helix.static.get-current-line-number *helix.cx*))

(provide current-selection-object)
(define (current-selection-object)
    (helix.static.current-selection-object *helix.cx*))

(provide get-helix-cwd)
(define (get-helix-cwd)
    (helix.static.get-helix-cwd *helix.cx*))

(provide move-window-far-left)
(define (move-window-far-left)
    (helix.static.move-window-far-left *helix.cx*))

(provide move-window-far-right)
(define (move-window-far-right)
    (helix.static.move-window-far-right *helix.cx*))

(provide get-helix-scm-path)
(define get-helix-scm-path helix.static.get-helix-scm-path)                
            
(provide get-init-scm-path)
(define get-init-scm-path helix.static.get-init-scm-path)                
            