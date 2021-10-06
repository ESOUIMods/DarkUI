dui = {}
dui.appName = "DarkUI"

----------------------------------------
-- Declarations
----------------------------------------
local ADDON_VERSION = "2.68"
local eso_root = "esoui/art/"
local ui_root = "darkui/"

local common_textures = {
   {"actionbar/quickslotbg.dds", "quickslotbg.dds"},
   {"chatwindow/chat_minimized_mungebg_highlight.dds", "chat_minimized_mungebg_highlight.dds"},
   {"compass/area2frameanim_assisted_center.dds", "compass_center.dds"},
   {"compass/area2frameanim_centers.dds", "compass_center.dds"},
   {"compass/area2frameanim_standard_center.dds", "compass_center.dds"},
   {"hud/gamepad/gp_infamy_meter-back-grey_px_per.dds", "blank.dds"},
   {"hud/infamy_meter-back-grey_px_per.dds", "blank.dds"},
   {"miscellaneous/centerscreen_indexarea_left.dds", "blank.dds"},
   {"miscellaneous/centerscreen_indexarea_right.dds", "blank.dds"},
   {"miscellaneous/progressbar_championbg.dds", "progressbar_championbg.dds"},
   {"miscellaneous/progressbar_frame_bg.dds", "progressbar_frame_bg.dds"},
   {"miscellaneous/verticaldivider_64.dds", "blank.dds"},
   {"miscellaneous/wide_divider_right.dds", "blank.dds"},
   {"progression/morph_graphic.dds", "morph_graphic.dds"},
   {"tooltips/munge_overlay.dds", "blank.dds"},
   {"tradinghouse/tradinghouse_itemicon_highlightbg.dds", "blank.dds"},
   {"tradinghouse/tradinghouse_sellblock-bghighlight_bottom.dds", "blank.dds"},
   {"tradinghouse/tradinghouse_sellblock-bghighlight_top.dds", "blank.dds"},
   {"unitattributevisualizer/attributebar_dynamic_bg.dds", "attributebar_dynamic_bg.dds"},
   {"unitattributevisualizer/attributebar_dynamic_increasedarmor_bg.dds", "attributebar_dynamic_increasedarmor_bg.dds"},
   {"unitattributevisualizer/attributebar_dynamic_increasedarmor_frame.dds", "attributebar_dynamic_increasedarmor_frame.dds"},
   {"unitattributevisualizer/attributebar_dynamic_invulnerable_munge.dds", "blank.dds"},
   {"unitattributevisualizer/attributebar_small_base.dds", "attributebar_small_base.dds"},
   {"unitattributevisualizer/attributebar_small_base_center.dds", "attributebar_small_base_center.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_invulnerable.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_invulnerable_munge.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_invulnerable.dds", "blank.dds"},
   {"unitattributevisualizer/targetbar_dynamic_bg.dds", "targetbar_dynamic_bg.dds"},
   {"unitattributevisualizer/targetbar_dynamic_invulnerable.dds", "blank.dds"},
   {"campaign/emporer_playerbg_left.dds", "emporer_playerbg_left.dds"},
   {"campaign/emporer_playerbg_right.dds", "emporer_playerbg_right.dds"},
   {"campaign/leaderboard_playerhighlight_left.dds", "leaderboard_playerhighlight_left.dds"},
   {"campaign/leaderboard_playerhighlight_right.dds", "leaderboard_playerhighlight_right.dds"},
   {"campaign/overview_scoringbg_aldmeri_left.dds", "overview_scoringbg_aldmeri_left.dds"},
   {"campaign/overview_scoringbg_aldmeri_right.dds", "overview_scoringbg_aldmeri_right.dds"},
   {"campaign/overview_scoringbg_daggerfall_left.dds", "overview_scoringbg_daggerfall_left.dds"},
   {"campaign/overview_scoringbg_daggerfall_right.dds", "overview_scoringbg_daggerfall_right.dds"},
   {"campaign/overview_scoringbg_ebonheart_left.dds", "overview_scoringbg_ebonheart_left.dds"},
   {"campaign/overview_scoringbg_ebonheart_right.dds", "overview_scoringbg_ebonheart_right.dds"},
   {"battlegrounds/battlegrounds_scoreboardbg_left.dds","battlegrounds_scoreboardbg_left.dds"},
   {"battlegrounds/battlegrounds_scoreboardbg_green.dds","battlegrounds_scoreboardbg_green.dds"},
   {"battlegrounds/battlegrounds_scoreboardbg_orange.dds","battlegrounds_scoreboardbg_orange.dds"},
   {"battlegrounds/battlegrounds_scoreboardbg_purple.dds","battlegrounds_scoreboardbg_purple.dds"},
   {"battlegrounds/battlegrounds_scoreboardbg_right.dds","blank.dds"},
   }

local quick_menu_textures = {
   {"hud/radialmenu_bg.dds", "radialmenu_bg_blue.dds", "radialmenu_bg_dark.dds", "radialmenu_bg_light.dds"},
   {"hud/radialmenu_bg_unselected.dds", "radialmenu_bg_unselected_blue.dds", "radialmenu_bg_unselected_dark.dds", "radialmenu_bg_unselected_light.dds"},
   {"quickslots/quickslot_emptyslot.dds", "quickslot_emptyslot_blue.dds", "quickslot_emptyslot_dark.dds", "quickslot_emptyslot_light.dds"},
   {"quickslots/quickslot_mapping_bg.dds", "quickslot_mapping_bg_blue.dds", "quickslot_mapping_bg_dark.dds", "quickslot_mapping_bg_light.dds"},
 }

local theme_textures = {
   {"actionbar/abilityframe64_down.dds", "abilityframe64_down.dds"},
   {"actionbar/abilityframe64_up.dds", "abilityframe64_up.dds"},
   {"actionbar/gamepad/gp_abilityframe64.dds", "gamepad/gp_abilityframe64.dds"},
   {"actionbar/gamepad/gp_abilityframe_buff.dds", "gamepad/gp_abilityframe_buff.dds"},
   {"actionbar/passiveabilityframe_round_down.dds", "passiveabilityframe_round_down.dds"},
   {"actionbar/passiveabilityframe_round_empty.dds", "passiveabilityframe_round_empty.dds"},
   {"actionbar/passiveabilityframe_round_up.dds", "passiveabilityframe_round_up.dds"},
   {"bossbar/bossbar_bracket_left.dds", "bossbar_bracket_left.dds"},
   {"bossbar/bossbar_bracket_right.dds", "bossbar_bracket_right.dds"},
   {"bossbar/gamepad/gp_bossbar_bracket.dds", "gamepad/gp_bossbar_bracket.dds"},
   {"campaign/campaignbrowser_divider_short.dds", "campaignbrowser_divider_short.dds"},
   {"campaign/campaignbrowser_listdivider_left.dds", "campaignbrowser_listdivider_left.dds"},
   {"campaign/campaignbrowser_listdivider_right.dds", "campaignbrowser_listdivider_right.dds"},
   {"campaign/leaderboard_meddivider_left.dds", "leaderboard_meddivider_left.dds"},
   {"campaign/leaderboard_meddivider_right.dds", "leaderboard_meddivider_right.dds"},
   {"charactercreate/windowdivider.dds", "windowdivider.dds"},
   {"characterwindow/characterwindow_leftside_divider.dds", "characterwindow_leftside_divider.dds"},
   {"compass/gamepad/gp_compass.dds", "gamepad/gp_compass.dds"},
   {"crafting/crafting_alchemy_slottingbg.dds", "crafting_alchemy_slottingbg.dds"},
   {"crafting/crafting_enchanting_slottingbg.dds", "crafting_enchanting_slottingbg.dds"},
   {"crafting/smithing_leftarrow_disabled.dds", "smithing_leftarrow_disabled.dds"},
   {"crafting/smithing_leftarrow_down.dds", "smithing_leftarrow_down.dds"},
   {"crafting/smithing_leftarrow_up.dds", "smithing_leftarrow_up.dds"},
   {"crafting/smithing_rightarrow_disabled.dds", "smithing_rightarrow_disabled.dds"},
   {"crafting/smithing_rightarrow_down.dds", "smithing_rightarrow_down.dds"},
   {"crafting/smithing_rightarrow_up.dds", "smithing_rightarrow_up.dds"},
   {"deathrecap/deathrecap_attackbossframe.dds", "deathrecap_attackbossframe.dds"},
   {"deathrecap/deathrecap_attackframe.dds", "deathrecap_attackframe.dds"},
   {"deathrecap/deathrecap_divider_left.dds", "deathrecap_divider_left.dds"},
   {"deathrecap/deathrecap_divider_right.dds", "deathrecap_divider_right.dds"},
   {"guild/sectiondivider_left.dds", "sectiondivider_left.dds"},
   {"guild/sectiondivider_right.dds", "sectiondivider_right.dds"},
   {"hud/gamepad/gp_infamy_meter-frame-generic.dds", "gamepad/gp_infamy_meter-frame-generic.dds"},
   {"hud/gamepad/gp_telvar_meter_frame.dds", "gamepad/gp_telvar_meter_frame.dds"},
   {"hud/gamepad/gp_ultimateframe_edge.dds", "gamepad/gp_ultimateframe_edge.dds"},
   {"hud/infamy_meter-frame-generic.dds", "infamy_meter-frame-generic.dds"},
   {"hud/telvar_meter_frame.dds", "telvar_meter_frame.dds"},
   {"interaction/conversation_verticalborder.dds", "conversation_verticalborder.dds"},
   {"itemtooltip/item_chargemeter.dds", "item_chargemeter.dds"},
   {"login/login_divider.dds", "login_divider.dds"},
   {"loot/loot_topdivider.dds", "loot_topdivider.dds"},
   {"miscellaneous/centerscreen_topdivider.dds", "centerscreen_topdivider.dds"},
   {"miscellaneous/gamepad/edgeframegamepadborder.dds", "gamepad/edgeframegamepadborder.dds"},
   {"miscellaneous/gamepad/edgeframegamepadborder_thick.dds", "gamepad/edgeframegamepadborder_thick.dds"},
   {"miscellaneous/gamepad/edgeframegamepadborder_thin.dds", "gamepad/edgeframegamepadborder_thin.dds"},
   {"miscellaneous/gamepad/gp_championbar_frame.dds", "gamepad/gp_championbar_frame.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar_large_frame.dds", "gamepad/gp_dynamicbar_large_frame.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar_medium_frame.dds", "gamepad/gp_dynamicbar_medium_frame.dds"},
   {"miscellaneous/gamepad/gp_emptyframe_gold_edge.dds", "gamepad/gp_emptyframe_gold_edge.dds"},
   {"miscellaneous/gamepad/gp_frameedge_8px.dds", "gamepad/gp_frameedge_8px.dds"},
   {"miscellaneous/gamepad/gp_passiveframe_128.dds", "gamepad/gp_passiveframe_128.dds"},
   {"miscellaneous/gamepad/gp_passiveframe_44.dds", "gamepad/gp_passiveframe_44.dds"},
   {"miscellaneous/gamepad/gp_tooltip_edge_16.dds", "gamepad/gp_tooltip_edge_16.dds"},
   {"miscellaneous/gamepad/gp_tooltip_edge_semitrans_16.dds", "gamepad/gp_tooltip_edge_semitrans_16.dds"},
   {"miscellaneous/gamepad/progressbar_frame.dds", "gamepad/progressbar_frame.dds"},
   {"miscellaneous/horizontaldivider.dds", "horizontaldivider.dds"},
   {"miscellaneous/horizontaldivider_dynamic.dds", "horizontaldivider_dynamic.dds"},
   {"miscellaneous/horizontaldividerred.dds", "horizontaldividerred.dds"},
   {"miscellaneous/listitem_highlight.dds", "listitem_highlight.dds"},
   {"miscellaneous/listitem_selectedhighlight.dds", "listitem_highlight.dds"},
   {"miscellaneous/progressbar_champion_frame.dds", "progressbar_champion_frame.dds"},
   {"miscellaneous/progressbar_frame.dds", "progressbar_frame.dds"},
   {"miscellaneous/wide_divider_left.dds", "wide_divider_left.dds"},
   {"quest/questjournal_divider.dds", "questjournal_divider.dds"},
   {"tooltips/tooltip_equippedlabel_bg.dds", "tooltip_equippedlabel_bg.dds"},
   {"tradinghouse/tradinghouse_divider_short.dds", "tradinghouse_divider_short.dds"},
   {"tradinghouse/tradinghouse_glyphs_trio_up.dds", "tradinghouse_glyphs_trio_up.dds"},
   {"tradinghouse/tradinghouse_glyphs_trio_disabled.dds", "tradinghouse_glyphs_trio_disabled.dds"},
   {"unitattributevisualizer/attributebar_dynamic_frame.dds", "attributebar_dynamic_frame.dds"},
   {"unitattributevisualizer/attributebar_small_frame.dds", "attributebar_small_frame.dds"},
   {"unitattributevisualizer/attributebar_small_frame_center.dds", "attributebar_small_frame_center.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_frame.dds", "gamepad/gp_attributebar_dynamic_frame.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_increasedarmor_frame.dds", "gamepad/gp_attributebar_dynamic_increasedarmor_frame.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_frame.dds", "gamepad/gp_attributebar_small_frame.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_frame_center.dds", "gamepad/gp_attributebar_small_frame_center.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_frame.dds", "gamepad/gp_targetbar_dynamic_frame.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_increasedarmor_frame.dds", "gamepad/gp_targetbar_dynamic_increasedarmor_frame.dds"},
   {"unitattributevisualizer/targetbar_dynamic_frame.dds", "targetbar_dynamic_frame.dds"},
   {"unitframes/gamepad/gp_targetunitframe_bracket_level2.dds", "gamepad/gp_targetunitframe_bracket_level2.dds"},
   {"unitframes/gamepad/gp_targetunitframe_bracket_level3.dds", "gamepad/gp_targetunitframe_bracket_level3.dds"},
   {"unitframes/gamepad/gp_targetunitframe_bracket_level4.dds", "gamepad/gp_targetunitframe_bracket_level4.dds"},
   {"unitframes/target_name_bracket_left.dds", "target_name_bracket_left.dds"},
   {"unitframes/target_name_bracket_right.dds", "target_name_bracket_right.dds"},
   {"unitframes/targetunitframe_bracket_level2_left.dds", "targetunitframe_bracket_level2_left.dds"},
   {"unitframes/targetunitframe_bracket_level2_right.dds", "targetunitframe_bracket_level2_right.dds"},
   {"unitframes/targetunitframe_bracket_level3_left.dds", "targetunitframe_bracket_level3_left.dds"},
   {"unitframes/targetunitframe_bracket_level3_right.dds", "targetunitframe_bracket_level3_right.dds"},
   {"unitframes/targetunitframe_bracket_level4_left.dds", "targetunitframe_bracket_level4_left.dds"},
   {"unitframes/targetunitframe_bracket_level4_right.dds", "targetunitframe_bracket_level4_right.dds"},
   {"windows/gamepad/gp_fullvertdiv.dds", "gamepad/gp_fullvertdiv.dds"},
   {"windows/gamepad/gp_hintbar.dds", "gamepad/gp_hintbar.dds"},
   {"windows/gamepad/gp_nav1_hordivider.dds", "gamepad/gp_nav1_hordivider.dds"},
   {"windows/gamepad/gp_nav1_hordividerflat.dds", "gamepad/gp_namainmenu/menubar_notifications_up.ddsdds"},
   {"windows/gamepad/gp_nav2_journal_hordivider.dds", "gamepad/gp_nav2_journal_hordivider.dds"},
   {"windows/gamepad/gp_windowpointer.dds", "gamepad/gp_windowpointer.dds"},
   {"worldmap/worldmap_frame_edge.dds", "worldmap_frame_edge.dds"},
   {"miscellaneous/scrollbox_elevator.dds", "scrollbox_elevator.dds"},
   {"miscellaneous/locked_up.dds", "locked_up.dds"},
   {"miscellaneous/locked_down.dds", "locked_down.dds"},
   {"miscellaneous/locked_disabled.dds", "locked_disabled.dds"},
   {"miscellaneous/unlocked_up.dds", "unlocked_up.dds"},
   {"miscellaneous/unlocked_down.dds", "unlocked_down.dds"},
   {"miscellaneous/locked_over.dds", "locked_over.dds"},
   {"miscellaneous/unlocked_over.dds", "unlocked_over.dds"},
   {"miscellaneous/dropdown_inset_center.dds", "dropdown_inset_center.dds"},
   {"miscellaneous/dropdown_inset_left.dds", "dropdown_inset_left.dds"},
   {"miscellaneous/dropdown_inset_right.dds", "dropdown_inset_right.dds"},
   {"miscellaneous/dropdown_center.dds", "dropdown_center.dds"},
   {"miscellaneous/dropdown_edge.dds", "dropdown_edge.dds"},
   {"miscellaneous/entryhighlight.dds", "entryhighlight.dds"},
   {"miscellaneous/highlightoverlay_center.dds", "highlightoverlay_center.dds"},
   {"miscellaneous/highlightoverlay_edge_4.dds", "highlightoverlay_edge_4.dds"},
   {"miscellaneous/highlightoverlay_edge_8.dds", "highlightoverlay_edge_8.dds"},
   {"miscellaneous/highlightoverlay_edge_16.dds", "highlightoverlay_edge_16.dds"},
   {"miscellaneous/scrollbox_elevator_disabled.dds", "scrollbox_elevator_disabled.dds"},
   {"miscellaneous/slottingframe_vertical_bottom.dds", "slottingframe_vertical_bottom.dds"},
   {"miscellaneous/slottingframe_vertical_middle.dds", "slottingframe_vertical_middle.dds"},
   {"miscellaneous/slottingframe_vertical_top.dds", "slottingframe_vertical_top.dds"},
   {"miscellaneous/spinnerbg_left.dds", "spinnerbg_left.dds"},
   {"collections/collections_tabicon_outfitstyles_up.dds", "collections_tabicon_outfitstyles_up.dds"},
   {"miscellaneous/colorpicker_slider_vertical.dds", "colorpicker_slider_vertical.dds"},
   {"miscellaneous/colorpicker_sliderframe.dds", "colorpicker_sliderframe.dds"},
   {"miscellaneous/colorpicker_swatchframe.dds", "colorpicker_swatchframe.dds"},
   {"guildfinder/tabicon_recruitment_up.dds", "tabicon_recruitment_up.dds"},
   {"guildfinder/tabicon_recruitment_disabled.dds", "tabicon_recruitment_disabled.dds"},
   {"guildfinder/keyboard/guildbrowser_applications_up.dds", "guildbrowser_applications_up.dds"},
   {"guildfinder/keyboard/guildbrowser_guildlist_additionalfilters_up.dds", "guildbrowser_guildlist_additionalfilters_up.dds"},
   {"guildfinder/keyboard/guildbrowser_guildlist_up.dds", "guildbrowser_guildlist_up.dds"},
   {"guildfinder/keyboard/guildbrowser_preferences_up.dds", "guildbrowser_preferences_up.dds"},
   {"guildfinder/keyboard/guildrecruitment_applications_up.dds", "guildrecruitment_applications_up.dds"},
   {"guildfinder/keyboard/guildrecruitment_blacklist_up.dds", "guildrecruitment_blacklist_up.dds"},
   {"guildfinder/keyboard/guildrecruitment_guildlisting_up.dds", "guildrecruitment_guildlisting_up.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_necklace_up.dds", "tradinghouse_apparel_accessories_necklace_up.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_necklace_up.dds", "tradinghouse_apparel_accessories_necklace_up.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_ring_up.dds", "tradinghouse_apparel_accessories_ring_up.dds"},
   {"tradinghouse/tradinghouse_apparel_chest_up.dds", "tradinghouse_apparel_chest_up.dds"},
   {"tradinghouse/tradinghouse_apparel_feet_up.dds", "tradinghouse_apparel_feet_up.dds"},
   {"tradinghouse/tradinghouse_apparel_hands_up.dds", "tradinghouse_apparel_hands_up.dds"},
   {"tradinghouse/tradinghouse_apparel_head_up.dds", "tradinghouse_apparel_head_up.dds"},
   {"tradinghouse/tradinghouse_apparel_legs_up.dds", "tradinghouse_apparel_legs_up.dds"},
   {"tradinghouse/tradinghouse_apparel_shoulders_up.dds", "tradinghouse_apparel_shoulders_up.dds"},
   {"tradinghouse/tradinghouse_apparel_waist_up.dds", "tradinghouse_apparel_waist_up.dds"},
   {"tradinghouse/tradinghouse_browse_tabicon_up.dds", "tradinghouse_browse_tabicon_up.dds"},
   {"tradinghouse/tradinghouse_holiday_writ_up.dds", "tradinghouse_holiday_writ_up.dds"},
   {"tradinghouse/tradinghouse_listings_tabicon_up.dds", "tradinghouse_listings_tabicon_up.dds"},
   {"tradinghouse/tradinghouse_master_writ_up.dds", "tradinghouse_master_writ_up.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_mats_up.dds", "tradinghouse_materials_blacksmithing_mats_up.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_rawmats_up.dds", "tradinghouse_materials_blacksmithing_rawmats_up.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_temper_up.dds", "tradinghouse_materials_blacksmithing_temper_up.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_aspect_up.dds", "tradinghouse_materials_enchanting_aspect_up.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_essence_up.dds", "tradinghouse_materials_enchanting_essence_up.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_potency_up.dds", "tradinghouse_materials_enchanting_potency_up.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_mats_up.dds", "tradinghouse_materials_jewelrymaking_mats_up.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_plating_up.dds", "tradinghouse_materials_jewelrymaking_plating_up.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_rawmats_up.dds", "tradinghouse_materials_jewelrymaking_rawmats_up.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_rawplating_up.dds", "tradinghouse_materials_jewelrymaking_rawplating_up.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_drink_up.dds", "tradinghouse_materials_provisioning_drink_up.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_food_up.dds", "tradinghouse_materials_provisioning_food_up.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_rare_up.dds", "tradinghouse_materials_provisioning_rare_up.dds"},
   {"tradinghouse/tradinghouse_materials_style_rawmats_up.dds", "tradinghouse_materials_style_rawmats_up.dds"},
   {"tradinghouse/tradinghouse_materials_style_stylemats_up.dds", "tradinghouse_materials_style_stylemats_up.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_mats_up.dds", "tradinghouse_materials_tailoring_mats_up.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_rawmats_up.dds", "tradinghouse_materials_tailoring_rawmats_up.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_tannin_up.dds", "tradinghouse_materials_tailoring_tannin_up.dds"},
   {"tradinghouse/tradinghouse_materials_traits_armor_up.dds", "tradinghouse_materials_traits_armor_up.dds"},
   {"tradinghouse/tradinghouse_materials_traits_jewelry_up.dds", "tradinghouse_materials_traits_jewelry_up.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_mats_up.dds", "tradinghouse_materials_woodworking_mats_up.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_rawmats_up.dds", "tradinghouse_materials_woodworking_rawmats_up.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_resin_up.dds", "tradinghouse_materials_woodworking_resin_up.dds"},
   {"tradinghouse/tradinghouse_other_trophy_types_up.dds", "tradinghouse_other_trophy_types_up.dds"},
   {"tradinghouse/tradinghouse_potions_poisonsolvent_up.dds", "tradinghouse_potions_poisonsolvent_up.dds"},
   {"tradinghouse/tradinghouse_potions_potionsolvent_up.dds", "tradinghouse_potions_potionsolvent_up.dds"},
   {"tradinghouse/tradinghouse_potions_reagents_up.dds", "tradinghouse_potions_reagents_up.dds"},
   {"tradinghouse/tradinghouse_racial_style_motif_book_up.dds", "tradinghouse_racial_style_motif_book_up.dds"},
   {"tradinghouse/tradinghouse_racial_style_motif_chapter_up.dds", "tradinghouse_racial_style_motif_chapter_up.dds"},
   {"tradinghouse/tradinghouse_sell_tabicon_up.dds", "tradinghouse_sell_tabicon_up.dds"},
   {"tradinghouse/tradinghouse_trophy_recipe_fragment_up.dds", "tradinghouse_trophy_recipe_fragment_up.dds"},
   {"tradinghouse/tradinghouse_trophy_runebox_fragment_up.dds", "tradinghouse_trophy_runebox_fragment_up.dds"},
   {"tradinghouse/tradinghouse_trophy_scroll_up.dds", "tradinghouse_trophy_scroll_up.dds"},
   {"tradinghouse/tradinghouse_trophy_treasure_map_up.dds", "tradinghouse_trophy_treasure_map_up.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_axe_up.dds", "tradinghouse_weapons_1h_axe_up.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_dagger_up.dds", "tradinghouse_weapons_1h_dagger_up.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_mace_up.dds", "tradinghouse_weapons_1h_mace_up.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_sword_up.dds", "tradinghouse_weapons_1h_sword_up.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_axe_up.dds", "tradinghouse_weapons_2h_axe_up.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_mace_up.dds", "tradinghouse_weapons_2h_mace_up.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_sword_up.dds", "tradinghouse_weapons_2h_sword_up.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_flame_up.dds", "tradinghouse_weapons_staff_flame_up.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_frost_up.dds", "tradinghouse_weapons_staff_frost_up.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_lightning_up.dds", "tradinghouse_weapons_staff_lightning_up.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_necklace_disabled.dds", "tradinghouse_apparel_accessories_necklace_disabled.dds"},
   {"tradinghouse/tradinghouse_divider_short.dds", "campaignbrowser_divider_short.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_necklace_disabled.dds", "tradinghouse_apparel_accessories_necklace_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_accessories_ring_up.dds", "tradinghouse_apparel_accessories_ring_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_chest_disabled.dds", "tradinghouse_apparel_chest_up.dds"},
   {"tradinghouse/tradinghouse_apparel_feet_disabled.dds", "tradinghouse_apparel_feet_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_hands_disabled.dds", "tradinghouse_apparel_hands_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_head_disabled.dds", "tradinghouse_apparel_head_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_legs_disabled.dds", "tradinghouse_apparel_legs_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_shoulders_disabled.dds", "tradinghouse_apparel_shoulders_disabled.dds"},
   {"tradinghouse/tradinghouse_apparel_waist_disabled.dds", "tradinghouse_apparel_waist_disabled.dds"},
   {"tradinghouse/tradinghouse_browse_tabicon_disabled.dds", "tradinghouse_browse_tabicon_disabled.dds"},
   {"tradinghouse/tradinghouse_holiday_writ_disabled.dds", "tradinghouse_holiday_writ_disabled.dds"},
   {"tradinghouse/tradinghouse_listings_tabicon_disabled.dds", "tradinghouse_listings_tabicon_disabled.dds"},
   {"tradinghouse/tradinghouse_master_writ_disabled.dds", "tradinghouse_master_writ_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_mats_disabled.dds", "tradinghouse_materials_blacksmithing_mats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_rawmats_disabled.dds", "tradinghouse_materials_blacksmithing_rawmats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_blacksmithing_temper_disabled.dds", "tradinghouse_materials_blacksmithing_temper_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_aspect_disabled.dds", "tradinghouse_materials_enchanting_aspect_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_essence_disabled.dds", "tradinghouse_materials_enchanting_essence_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_enchanting_potency_disabled.dds", "tradinghouse_materials_enchanting_potency_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_mats_disabled.dds", "tradinghouse_materials_jewelrymaking_mats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_plating_disabled.dds", "tradinghouse_materials_jewelrymaking_plating_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_rawmats_disabled.dds", "tradinghouse_materials_jewelrymaking_rawmats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_jewelrymaking_rawplating_disabled.dds", "tradinghouse_materials_jewelrymaking_rawplating_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_drink_disabled.dds", "tradinghouse_materials_provisioning_drink_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_food_disabled.dds", "tradinghouse_materials_provisioning_food_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_provisioning_rare_disabled.dds", "tradinghouse_materials_provisioning_rare_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_style_rawmats_disabled.dds", "tradinghouse_materials_style_rawmats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_style_stylemats_disabled.dds", "tradinghouse_materials_style_stylemats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_mats_disabled.dds", "tradinghouse_materials_tailoring_mats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_rawmats_disabled.dds", "tradinghouse_materials_tailoring_rawmats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_tailoring_tannin_disabled.dds", "tradinghouse_materials_tailoring_tannin_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_traits_armor_disabled.dds", "tradinghouse_materials_traits_armor_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_traits_jewelry_disabled.dds", "tradinghouse_materials_traits_jewelry_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_mats_disabled.dds", "tradinghouse_materials_woodworking_mats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_rawmats_disabled.dds", "tradinghouse_materials_woodworking_rawmats_disabled.dds"},
   {"tradinghouse/tradinghouse_materials_woodworking_resin_disabled.dds", "tradinghouse_materials_woodworking_resin_disabled.dds"},
   {"tradinghouse/tradinghouse_other_trophy_types_disabled.dds", "tradinghouse_other_trophy_types_disabled.dds"},
   {"tradinghouse/tradinghouse_potions_poisonsolvent_disabled.dds", "tradinghouse_potions_poisonsolvent_disabled.dds"},
   {"tradinghouse/tradinghouse_potions_potionsolvent_disabled.dds", "tradinghouse_potions_potionsolvent_disabled.dds"},
   {"tradinghouse/tradinghouse_potions_reagents_disabled.dds", "tradinghouse_potions_reagents_disabled.dds"},
   {"tradinghouse/tradinghouse_racial_style_motif_book_disabled.dds", "tradinghouse_racial_style_motif_book_disabled.dds"},
   {"tradinghouse/tradinghouse_racial_style_motif_chapter_disabled.dds", "tradinghouse_racial_style_motif_chapter_disabled.dds"},
   {"tradinghouse/tradinghouse_sell_tabicon_disabled.dds", "tradinghouse_sell_tabicon_disabled.dds"},
   {"tradinghouse/tradinghouse_trophy_recipe_fragment_disabled.dds", "tradinghouse_trophy_recipe_fragment_disabled.dds"},
   {"tradinghouse/tradinghouse_trophy_runebox_fragment_disabled.dds", "tradinghouse_trophy_runebox_fragment_disabled.dds"},
   {"tradinghouse/tradinghouse_trophy_scroll_disabled.dds", "tradinghouse_trophy_scroll_disabled.dds"},
   {"tradinghouse/tradinghouse_trophy_treasure_map_disabled.dds", "tradinghouse_trophy_treasure_map_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_axe_disabled.dds", "tradinghouse_weapons_1h_axe_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_dagger_disabled.dds", "tradinghouse_weapons_1h_dagger_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_mace_disabled.dds", "tradinghouse_weapons_1h_mace_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_1h_sword_disabled.dds", "tradinghouse_weapons_1h_sword_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_axe_disabled.dds", "tradinghouse_weapons_2h_axe_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_mace_disabled.dds", "tradinghouse_weapons_2h_mace_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_2h_sword_disabled.dds", "tradinghouse_weapons_2h_sword_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_flame_disabled.dds", "tradinghouse_weapons_staff_flame_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_frost_disabled.dds", "tradinghouse_weapons_staff_frost_disabled.dds"},
   {"tradinghouse/tradinghouse_weapons_staff_lightning_disabled.dds", "tradinghouse_weapons_staff_lightning_disabled.dds"},
   {"skillsadvisor/advisor_tabicon_settings_up.dds", "advisor_tabicon_settings_up.dds"},
   {"skillsadvisor/advisor_tabicon_tutorial_disabled.dds", "advisor_tabicon_tutorial_disabled.dds"},
   {"skillsadvisor/advisor_tabicon_tutorial_up.dds", "advisor_tabicon_tutorial_up.dds"},
   {"skillsadvisor/circle_passiveabilityframe_doubleframe.dds", "passiveabilityframe_round_up.dds"},
   {"skillsadvisor/circle_passiveabilityframe_doubleframe_down.dds", "passiveabilityframe_round_down.dds"},
   {"skillsadvisor/circle_passiveabilityframe_doubleframecorners.dds", "circle_passiveabilityframe_doubleframecorners.dds"},
   {"skillsadvisor/square_abilityframe64_doubleframe.dds", "abilityframe64_up.dds"},
   {"skillsadvisor/square_abilityframe64_doubleframe_down.dds", "abilityframe64__down.dds"},
   {"skillsadvisor/square_abilityframe64_doubleframecorners.dds", "square_abilityframe64_doubleframecorners.dds"},
   {"actionbar/abilityframe_buff.dds", "abilityframe_buff.dds"},
   {"actionbar/abilityframe_debuff.dds", "abilityframe_debuff.dds"},
   }

local theme_icons = {
   {"bank/bank_tabicon_deposit_up.dds", "bank_tabicon_deposit_up.dds"},
   {"bank/bank_tabicon_gold_up.dds", "bank_tabicon_gold_up.dds"},
   {"bank/bank_tabicon_telvar_up.dds", "bank_tabicon_telvar_up.dds"},
   {"bank/bank_tabicon_withdraw_up.dds", "bank_tabicon_withdraw_up.dds"},
   {"battlegrounds/battlegrounds_tabicon_battlegrounds_up.dds", "battlegrounds_tabicon_battlegrounds_up.dds"},
   {"cadwell/cadwell_indexicon_gold_disabled.dds", "cadwell_indexicon_gold_disabled.dds"},
   {"cadwell/cadwell_indexicon_gold_up.dds", "cadwell_indexicon_gold_up.dds"},
   {"cadwell/cadwell_indexicon_silver_disabled.dds", "cadwell_indexicon_silver_disabled.dds"},
   {"cadwell/cadwell_indexicon_silver_up.dds", "cadwell_indexicon_silver_up.dds"},
   {"campaign/campaign_tabicon_browser_up.dds", "campaign_tabicon_browser_up.dds"},
   {"campaign/campaign_tabicon_history_up.dds", "campaign_tabicon_history_up.dds"},
   {"campaign/campaign_tabicon_leaderboard_up.dds", "campaign_tabicon_leaderboard_up.dds"},
   {"campaign/campaign_tabicon_summary_up.dds", "campaign_tabicon_summary_up.dds"},
   {"campaign/campaignbrowser_indexicon_hardcore_up.dds", "campaignbrowser_indexicon_hardcore_up.dds"},
   {"campaign/campaignbrowser_indexicon_normal_up.dds", "campaignbrowser_indexicon_normal_up.dds"},
   {"campaign/campaignbrowser_indexicon_specialevents_up.dds", "campaignbrowser_indexicon_specialevents_up.dds"},
   {"campaign/overview_indexicon_bonus_disabled.dds", "overview_indexicon_bonus_disabled.dds"},
   {"campaign/overview_indexicon_bonus_up.dds", "overview_indexicon_bonus_up.dds"},
   {"campaign/overview_indexicon_emperor_disabled.dds", "overview_indexicon_emperor_disabled.dds"},
   {"campaign/overview_indexicon_emperor_up.dds", "overview_indexicon_emperor_up.dds"},
   {"campaign/overview_indexicon_scoring_disabled.dds", "overview_indexicon_scoring_disabled.dds"},
   {"campaign/overview_indexicon_scoring_up.dds", "overview_indexicon_scoring_up.dds"},
   {"charactercreate/rotate_right_down.dds", "rotate_right_down.dds"},
   {"charactercreate/rotate_right_up.dds", "rotate_right_up.dds"},
   {"chatwindow/chat_addtab_down.dds", "chat_addtab_down.dds"},
   {"chatwindow/chat_addtab_up.dds", "chat_addtab_up.dds"},
   {"chatwindow/chat_cs_down.dds", "chat_cs_down.dds"},
   {"chatwindow/chat_cs_up.dds", "chat_cs_up.dds"},
   {"chatwindow/chat_friendsonline_down.dds", "chat_friendsonline_down.dds"},
   {"chatwindow/chat_friendsonline_up.dds", "chat_friendsonline_up.dds"},
   {"chatwindow/chat_mail_down.dds", "chat_mail_down.dds"},
   {"chatwindow/chat_mail_up.dds", "chat_mail_up.dds"},
   {"chatwindow/chat_notification_down.dds", "chat_notification_down.dds"},
   {"chatwindow/chat_notification_up.dds", "chat_notification_up.dds"},
   {"chatwindow/chat_options_down.dds", "chat_options_down.dds"},
   {"chatwindow/chat_options_up.dds", "chat_options_up.dds"},
   {"chatwindow/chat_overflowarrow_down.dds", "chat_overflowarrow_down.dds"},
   {"chatwindow/chat_overflowarrow_up.dds", "chat_overflowarrow_up.dds"},
   {"chatwindow/maximize_down.dds", "maximize_down.dds"},
   {"chatwindow/maximize_up.dds", "maximize_up.dds"},
   {"chatwindow/minimize_down.dds", "minimize_down.dds"},
   {"chatwindow/minimize_up.dds", "minimize_up.dds"},
   {"collections/collections_tabicon_collectibles_up.dds", "collections_tabicon_collectibles_up.dds"},
   {"collections/collections_tabicon_dlc_up.dds", "collections_tabicon_dlc_up.dds"},
   {"collections/collections_tabicon_housing_up.dds", "collections_tabicon_housing_up.dds"},
   {"contacts/tabicon_friends_up.dds", "tabicon_friends_up.dds"},
   {"contacts/tabicon_ignored_up.dds", "tabicon_ignored_up.dds"},
   {"crafting/alchemy_tabicon_reagent_disabled.dds", "alchemy_tabicon_reagent_disabled.dds"},
   {"crafting/alchemy_tabicon_reagent_up.dds", "alchemy_tabicon_reagent_up.dds"},
   {"crafting/alchemy_tabicon_solvent_disabled.dds", "alchemy_tabicon_solvent_disabled.dds"},
   {"crafting/alchemy_tabicon_solvent_up.dds", "alchemy_tabicon_solvent_up.dds"},
   {"crafting/blueprints_tabicon_disabled.dds", "blueprints_tabicon_disabled.dds"},
   {"crafting/blueprints_tabicon_up.dds", "blueprints_tabicon_up.dds"},
   {"crafting/designs_tabicon_disabled.dds", "designs_tabicon_disabled.dds"},
   {"crafting/designs_tabicon_up.dds", "designs_tabicon_up.dds"},
   {"crafting/diagrams_tabicon_disabled.dds", "diagrams_tabicon_disabled.dds"},
   {"crafting/diagrams_tabicon_up.dds", "diagrams_tabicon_up.dds"},
   {"crafting/enchantment_tabicon_aspect_disabled.dds", "enchantment_tabicon_aspect_disabled.dds"},
   {"crafting/enchantment_tabicon_aspect_up.dds", "enchantment_tabicon_aspect_up.dds"},
   {"crafting/enchantment_tabicon_deconstruction_disabled.dds", "enchantment_tabicon_deconstruction_disabled.dds"},
   {"crafting/enchantment_tabicon_deconstruction_up.dds", "enchantment_tabicon_deconstruction_up.dds"},
   {"crafting/enchantment_tabicon_essence_disabled.dds", "enchantment_tabicon_essence_disabled.dds"},
   {"crafting/enchantment_tabicon_essence_up.dds", "enchantment_tabicon_essence_up.dds"},
   {"crafting/enchantment_tabicon_potency_disabled.dds", "enchantment_tabicon_potency_disabled.dds"},
   {"crafting/enchantment_tabicon_potency_up.dds", "enchantment_tabicon_potency_up.dds"},
   {"crafting/formulae_tabicon_disabled.dds", "formulae_tabicon_disabled.dds"},
   {"crafting/formulae_tabicon_up.dds", "formulae_tabicon_up.dds"},
   {"crafting/jewelry_tabicon_up.dds", "jewelry_tabicon_up.dds"},
   {"crafting/patterns_tabicon_disabled.dds", "patterns_tabicon_disabled.dds"},
   {"crafting/patterns_tabicon_up.dds", "patterns_tabicon_up.dds"},
   {"crafting/provisioner_indexicon_beer_disabled.dds", "provisioner_indexicon_beer_disabled.dds"},
   {"crafting/provisioner_indexicon_beer_up.dds", "provisioner_indexicon_beer_up.dds"},
   {"crafting/provisioner_indexicon_furnishings_up.dds", "provisioner_indexicon_furnishings_up.dds"},
   {"crafting/provisioner_indexicon_meat_disabled.dds", "provisioner_indexicon_meat_disabled.dds"},
   {"crafting/provisioner_indexicon_meat_up.dds", "provisioner_indexicon_meat_up.dds"},
   {"crafting/schematics_tabicon_disabled.dds", "schematics_tabicon_disabled.dds"},
   {"crafting/schematics_tabicon_up.dds", "schematics_tabicon_up.dds"},
   {"crafting/smithing_tabicon_armorset_disabled.dds", "smithing_tabicon_armorset_disabled.dds"},
   {"crafting/smithing_tabicon_armorset_up.dds", "smithing_tabicon_armorset_up.dds"},
   {"crafting/smithing_tabicon_creation_disabled.dds", "smithing_tabicon_creation_disabled.dds"},
   {"crafting/smithing_tabicon_creation_up.dds", "smithing_tabicon_creation_up.dds"},
   {"crafting/smithing_tabicon_improve_disabled.dds", "smithing_tabicon_improve_disabled.dds"},
   {"crafting/smithing_tabicon_improve_up.dds", "smithing_tabicon_improve_up.dds"},
   {"crafting/smithing_tabicon_refine_disabled.dds", "smithing_tabicon_refine_disabled.dds"},
   {"crafting/smithing_tabicon_refine_up.dds", "smithing_tabicon_refine_up.dds"},
   {"crafting/smithing_tabicon_research_disabled.dds", "smithing_tabicon_research_disabled.dds"},
   {"crafting/smithing_tabicon_research_up.dds", "smithing_tabicon_research_up.dds"},
   {"crafting/smithing_tabicon_weaponset_disabled.dds", "smithing_tabicon_weaponset_disabled.dds"},
   {"crafting/smithing_tabicon_weaponset_up.dds", "smithing_tabicon_weaponset_up.dds"},
   {"guild/guild_indexicon_recruit_up.dds", "guild_indexicon_recruit_up.dds"},
   {"guild/guildheraldry_indexicon_background_disabled.dds", "guildheraldry_indexicon_background_disabled.dds"},
   {"guild/guildheraldry_indexicon_background_up.dds", "guildheraldry_indexicon_background_up.dds"},
   {"guild/guildheraldry_indexicon_crest_disabled.dds", "guildheraldry_indexicon_crest_disabled.dds"},
   {"guild/guildheraldry_indexicon_crest_up.dds", "guildheraldry_indexicon_crest_up.dds"},
   {"guild/guildheraldry_indexicon_finalize_disabled.dds", "guildheraldry_indexicon_finalize_disabled.dds"},
   {"guild/guildheraldry_indexicon_finalize_up.dds", "guildheraldry_indexicon_finalize_up.dds"},
   {"guild/guildhistory_indexicon_alliancewar_up.dds", "guildhistory_indexicon_alliancewar_up.dds"},
   {"guild/guildhistory_indexicon_campaigns_up.dds", "guildhistory_indexicon_campaigns_up.dds"},
   {"guild/guildhistory_indexicon_combat_up.dds", "guildhistory_indexicon_combat_up.dds"},
   {"guild/guildhistory_indexicon_guild_up.dds", "guildhistory_indexicon_guild_up.dds"},
   {"guild/guildhistory_indexicon_guildbank_up.dds", "guildhistory_indexicon_guildbank_up.dds"},
   {"guild/guildhistory_indexicon_guildstore_up.dds", "guildhistory_indexicon_guildstore_up.dds"},
   {"guild/tabicon_heraldry_disabled.dds", "tabicon_heraldry_disabled.dds"},
   {"guild/tabicon_heraldry_up.dds", "tabicon_heraldry_up.dds"},
   {"guild/tabicon_history_disabled.dds", "tabicon_history_disabled.dds"},
   {"guild/tabicon_history_up.dds", "tabicon_history_up.dds"},
   {"guild/tabicon_home_disabled.dds", "tabicon_home_disabled.dds"},
   {"guild/tabicon_home_up.dds", "tabicon_home_up.dds"},
   {"guild/tabicon_ranks_disabled.dds", "tabicon_ranks_disabled.dds"},
   {"guild/tabicon_ranks_up.dds", "tabicon_ranks_up.dds"},
   {"guild/tabicon_roster_disabled.dds", "tabicon_roster_disabled.dds"},
   {"guild/tabicon_roster_up.dds", "tabicon_roster_up.dds"},
   {"inventory/inventory_tabicon_all_up.dds", "inventory_tabicon_all_up.dds"},
   {"inventory/inventory_tabicon_armor_up.dds", "inventory_tabicon_armor_up.dds"},
   {"inventory/inventory_tabicon_consumables_up.dds", "inventory_tabicon_consumables_up.dds"},
   {"inventory/inventory_tabicon_craftbag_alchemy_up.dds", "inventory_tabicon_craftbag_alchemy_up.dds"},
   {"inventory/inventory_tabicon_craftbag_blacksmithing_up.dds", "inventory_tabicon_craftbag_blacksmithing_up.dds"},
   {"inventory/inventory_tabicon_craftbag_clothing_up.dds", "inventory_tabicon_craftbag_clothing_up.dds"},
   {"inventory/inventory_tabicon_craftbag_enchanting_up.dds", "inventory_tabicon_craftbag_enchanting_up.dds"},
   {"inventory/inventory_tabicon_craftbag_itemtrait_up.dds", "inventory_tabicon_craftbag_itemtrait_up.dds"},
   {"inventory/inventory_tabicon_craftbag_provisioning_up.dds", "inventory_tabicon_craftbag_provisioning_up.dds"},
   {"inventory/inventory_tabicon_craftbag_stylematerial_up.dds", "inventory_tabicon_craftbag_stylematerial_up.dds"},
   {"inventory/inventory_tabicon_craftbag_up.dds", "inventory_tabicon_craftbag_up.dds"},
   {"inventory/inventory_tabicon_craftbag_woodworking_up.dds", "inventory_tabicon_craftbag_woodworking_up.dds"},
   {"inventory/inventory_tabicon_craftbag_jewelrycrafting_up.dds", "inventory_tabicon_craftbag_jewelrycrafting_up.dds"},
   {"inventory/inventory_tabicon_crafting_up.dds", "inventory_tabicon_crafting_up.dds"},
   {"inventory/inventory_tabicon_items_up.dds", "inventory_tabicon_items_up.dds"},
   {"inventory/inventory_tabicon_junk_up.dds", "inventory_tabicon_junk_up.dds"},
   {"inventory/inventory_tabicon_misc_up.dds", "inventory_tabicon_misc_up.dds"},
   {"inventory/inventory_tabicon_quest_up.dds", "inventory_tabicon_quest_up.dds"},
   {"inventory/inventory_tabicon_quickslot_up.dds", "inventory_tabicon_quickslot_up.dds"},
   {"inventory/inventory_tabicon_weapons_up.dds", "inventory_tabicon_weapons_up.dds"},
   {"journal/journal_tabicon_achievements_disabled.dds", "journal_tabicon_achievements_disabled.dds"},
   {"journal/journal_tabicon_achievements_up.dds", "journal_tabicon_achievements_up.dds"},
   {"journal/journal_tabicon_cadwell_disabled.dds", "journal_tabicon_cadwell_disabled.dds"},
   {"journal/journal_tabicon_cadwell_up.dds", "journal_tabicon_cadwell_up.dds"},
   {"journal/journal_tabicon_leaderboard_disabled.dds", "journal_tabicon_leaderboard_disabled.dds"},
   {"journal/journal_tabicon_leaderboard_up.dds", "journal_tabicon_leaderboard_up.dds"},
   {"journal/journal_tabicon_lorelibrary_disabled.dds", "journal_tabicon_lorelibrary_disabled.dds"},
   {"journal/journal_tabicon_lorelibrary_up.dds", "journal_tabicon_lorelibrary_up.dds"},
   {"journal/journal_tabicon_quest_disabled.dds", "journal_tabicon_quest_disabled.dds"},
   {"journal/journal_tabicon_quest_up.dds", "journal_tabicon_quest_up.dds"},
   {"journal/leaderboard_indexicon_ava_disabled.dds", "leaderboard_indexicon_ava_disabled.dds"},
   {"journal/leaderboard_indexicon_ava_up.dds", "leaderboard_indexicon_ava_up.dds"},
   {"journal/leaderboard_indexicon_challenge_disabled.dds", "leaderboard_indexicon_challenge_disabled.dds"},
   {"journal/leaderboard_indexicon_challenge_up.dds", "leaderboard_indexicon_challenge_up.dds"},
   {"journal/leaderboard_indexicon_housing_up.dds", "leaderboard_indexicon_housing_up.dds"},
   {"journal/leaderboard_indexicon_raids_disabled.dds", "leaderboard_indexicon_raids_disabled.dds"},
   {"journal/leaderboard_indexicon_raids_up.dds", "leaderboard_indexicon_raids_up.dds"},
   {"journal/leaderboard_tabicon_guest_disabled.dds", "leaderboard_tabicon_guest_disabled.dds"},
   {"journal/leaderboard_tabicon_guest_up.dds", "leaderboard_tabicon_guest_up.dds"},
   {"journal/leaderboard_tabicon_home_disabled.dds", "leaderboard_tabicon_home_disabled.dds"},
   {"journal/leaderboard_tabicon_home_up.dds", "leaderboard_tabicon_home_up.dds"},
   {"lfg/lfg_championdungeon_disabled.dds", "lfg_championdungeon_disabled.dds"},
   {"lfg/lfg_championdungeon_down_disabled.dds", "lfg_championdungeon_down_disabled.dds"},
   {"lfg/lfg_championdungeon_up.dds", "lfg_championdungeon_up.dds"},
   {"lfg/lfg_dps_disabled.dds", "lfg_dps_disabled.dds"},
   {"lfg/lfg_dps_disabled_64.dds", "lfg_dps_disabled_64.dds"},
   {"lfg/lfg_dps_down_disabled.dds", "lfg_dps_down_disabled.dds"},
   {"lfg/lfg_dps_up.dds", "lfg_dps_up.dds"},
   {"lfg/lfg_dps_up_64.dds", "lfg_dps_up_64.dds"},
   {"lfg/lfg_healer_disabled.dds", "lfg_healer_disabled.dds"},
   {"lfg/lfg_healer_disabled_64.dds", "lfg_healer_disabled_64.dds"},
   {"lfg/lfg_healer_down_disabled.dds", "lfg_healer_down_disabled.dds"},
   {"lfg/lfg_healer_up.dds", "lfg_healer_up.dds"},
   {"lfg/lfg_healer_up_64.dds", "lfg_healer_up_64.dds"},
   {"lfg/lfg_indexicon_alliancewar_up.dds", "lfg_indexicon_alliancewar_up.dds"},
   {"lfg/lfg_indexicon_battlegrounds_up.dds", "lfg_indexicon_battlegrounds_up.dds"},
   {"lfg/lfg_indexicon_dungeon_up.dds", "lfg_indexicon_dungeon_up.dds"},
   {"lfg/lfg_indexicon_group_up.dds", "lfg_indexicon_group_up.dds"},
   {"lfg/lfg_indexicon_homeshow_up.dds", "lfg_indexicon_homeshow_up.dds"},
   {"lfg/lfg_indexicon_trial_up.dds", "lfg_indexicon_trial_up.dds"},
   {"lfg/lfg_leader_disabled.dds", "lfg_leader_disabled.dds"},
   {"lfg/lfg_leader_icon.dds", "lfg_leader_icon.dds"},
   {"lfg/lfg_normaldungeon_disabled.dds", "lfg_normaldungeon_disabled.dds"},
   {"lfg/lfg_normaldungeon_down_disabled.dds", "lfg_normaldungeon_down_disabled.dds"},
   {"lfg/lfg_normaldungeon_up.dds", "lfg_normaldungeon_up.dds"},
   {"lfg/lfg_roleicon_dps_up.dds", "lfg_roleicon_dps_up.dds"},
   {"lfg/lfg_roleicon_healer_up.dds", "lfg_roleicon_healer_up.dds"},
   {"lfg/lfg_roleicon_tank_up.dds", "lfg_roleicon_tank_up.dds"},
   {"lfg/lfg_tabicon_grouptools_disabled.dds", "lfg_tabicon_grouptools_disabled.dds"},
   {"lfg/lfg_tabicon_grouptools_up.dds", "lfg_tabicon_grouptools_up.dds"},
   {"lfg/lfg_tabicon_mygroup_disabled.dds", "lfg_tabicon_mygroup_disabled.dds"},
   {"lfg/lfg_tabicon_mygroup_up.dds", "lfg_tabicon_mygroup_up.dds"},
   {"lfg/lfg_tank_disabled.dds", "lfg_tank_disabled.dds"},
   {"lfg/lfg_tank_disabled_64.dds", "lfg_tank_disabled_64.dds"},
   {"lfg/lfg_tank_down_disabled.dds", "lfg_tank_down_disabled.dds"},
   {"lfg/lfg_tank_up.dds", "lfg_tank_up.dds"},
   {"lfg/lfg_tank_up_64.dds", "lfg_tank_up_64.dds"},
   {"lfg/lfg_veterandungeon_disabled.dds", "lfg_veterandungeon_disabled.dds"},
   {"lfg/lfg_veterandungeon_down_disabled.dds", "lfg_veterandungeon_down_disabled.dds"},
   {"lfg/lfg_veterandungeon_up.dds", "lfg_veterandungeon_up.dds"},
   {"lfg/lfg_indexicon_zonestories_up.dds", "lfg_indexicon_zonestories_up.dds"},
   {"mail/mail_tabicon_compose_up.dds", "mail_tabicon_compose_up.dds"},
   {"mail/mail_tabicon_inbox_up.dds", "mail_tabicon_inbox_up.dds"},
   {"mainmenu/menubar_ava_disabled.dds", "menubar_ava_disabled.dds"},
   {"mainmenu/menubar_ava_up.dds", "menubar_ava_up.dds"},
   {"mainmenu/menubar_champion_disabled.dds", "menubar_champion_disabled.dds"},
   {"mainmenu/menubar_champion_up.dds", "menubar_champion_up.dds"},
   {"mainmenu/menubar_character_disabled.dds", "menubar_character_disabled.dds"},
   {"mainmenu/menubar_character_up.dds", "menubar_character_up.dds"},
   {"mainmenu/menubar_collections_disabled.dds", "menubar_collections_disabled.dds"},
   {"mainmenu/menubar_collections_up.dds", "menubar_collections_up.dds"},
   {"mainmenu/menubar_crowncrates_disabled.dds", "menubar_crowncrates_disabled.dds"},
   {"mainmenu/menubar_crowncrates_up.dds", "menubar_crowncrates_up.dds"},
   {"mainmenu/menubar_group_disabled.dds", "menubar_group_disabled.dds"},
   {"mainmenu/menubar_group_up.dds", "menubar_group_up.dds"},
   {"mainmenu/menubar_guilds_disabled.dds", "menubar_guilds_disabled.dds"},
   {"mainmenu/menubar_guilds_up.dds", "menubar_guilds_up.dds"},
   {"mainmenu/menubar_inventory_disabled.dds", "menubar_inventory_disabled.dds"},
   {"mainmenu/menubar_inventory_up.dds", "menubar_inventory_up.dds"},
   {"mainmenu/menubar_journal_disabled.dds", "menubar_journal_disabled.dds"},
   {"mainmenu/menubar_journal_up.dds", "menubar_journal_up.dds"},
   {"mainmenu/menubar_mail_disabled.dds", "menubar_mail_disabled.dds"},
   {"mainmenu/menubar_mail_up.dds", "menubar_mail_up.dds"},
   {"mainmenu/menubar_map_disabled.dds", "menubar_map_disabled.dds"},
   {"mainmenu/menubar_map_up.dds", "menubar_map_up.dds"},
   {"mainmenu/menubar_market_disabled.dds", "menubar_market_disabled.dds"},
   {"mainmenu/menubar_market_up.dds", "menubar_market_up.dds"},
   {"mainmenu/menubar_notifications_disabled.dds", "menubar_notifications_disabled.dds"},
   {"mainmenu/menubar_notifications_up.dds", "menubar_notifications_up.dds"},
   {"mainmenu/menubar_skills_disabled.dds", "menubar_skills_disabled.dds"},
   {"mainmenu/menubar_skills_up.dds", "menubar_skills_up.dds"},
   {"mainmenu/menubar_social_disabled.dds", "menubar_social_disabled.dds"},
   {"mainmenu/menubar_social_up.dds", "menubar_social_up.dds"},
   {"mainmenu/menubar_voip_disabled.dds", "menubar_voip_disabled.dds"},
   {"mainmenu/menubar_voip_up.dds", "menubar_voip_up.dds"},
   {"menubar/menubar_help_down.dds", "menubar_help_down.dds"},
   {"menubar/menubar_help_up.dds", "menubar_help_up.dds"},
   {"mounts/activemount_icon.dds", "activemount_icon.dds"},
   {"mounts/feed_icon.dds", "feed_icon.dds"},
   {"mounts/ridingskill_capacity.dds", "ridingskill_capacity.dds"},
   {"mounts/ridingskill_ready.dds", "ridingskill_ready.dds"},
   {"mounts/ridingskill_speed.dds", "ridingskill_speed.dds"},
   {"mounts/ridingskill_stamina.dds", "ridingskill_stamina.dds"},
   {"mounts/tabicon_mounts_up.dds", "tabicon_mounts_up.dds"},
   {"mounts/tabicon_ridingskills_up.dds", "tabicon_ridingskills_up.dds"},
   {"progression/addpoints_down.dds", "addpoints_down.dds"},
   {"progression/addpoints_up.dds", "addpoints_up.dds"},
   {"progression/morph_disabled.dds", "morph_disabled.dds"},
   {"progression/morph_down.dds", "morph_down.dds"},
   {"progression/morph_up.dds", "morph_up.dds"},
   {"progression/progression_indexicon_armor_up.dds", "progression_indexicon_armor_up.dds"},
   {"progression/progression_indexicon_ava_up.dds", "progression_indexicon_ava_up.dds"},
   {"progression/progression_indexicon_class_up.dds", "progression_indexicon_class_up.dds"},
   {"progression/progression_indexicon_guilds_up.dds", "progression_indexicon_guilds_up.dds"},
   {"progression/progression_indexicon_race_up.dds", "progression_indexicon_race_up.dds"},
   {"progression/progression_indexicon_tradeskills_up.dds", "progression_indexicon_tradeskills_up.dds"},
   {"progression/progression_indexicon_weapons_up.dds", "progression_indexicon_weapons_up.dds"},
   {"progression/progression_indexicon_world_up.dds", "progression_indexicon_world_up.dds"},
   {"vendor/vendor_tabicon_buy_up.dds", "vendor_tabicon_buy_up.dds"},
   {"vendor/vendor_tabicon_buyback_up.dds", "vendor_tabicon_buyback_up.dds"},
   {"vendor/vendor_tabicon_fence_up.dds", "vendor_tabicon_fence_up.dds"},
   {"vendor/vendor_tabicon_repair_up.dds", "vendor_tabicon_repair_up.dds"},
   {"vendor/vendor_tabicon_sell_up.dds", "vendor_tabicon_sell_up.dds"},
   {"worldmap/map_ava_tabicon_foodfarm_up.dds", "map_ava_tabicon_foodfarm_up.dds"},
   {"worldmap/map_ava_tabicon_keepsummary_up.dds", "map_ava_tabicon_keepsummary_up.dds"},
   {"worldmap/map_ava_tabicon_oremine_up.dds", "map_ava_tabicon_oremine_up.dds"},
   {"worldmap/map_ava_tabicon_resourcedefense_up.dds", "map_ava_tabicon_resourcedefense_up.dds"},
   {"worldmap/map_ava_tabicon_resourceproduction_up.dds", "map_ava_tabicon_resourceproduction_up.dds"},
   {"worldmap/map_ava_tabicon_woodmill_up.dds", "map_ava_tabicon_woodmill_up.dds"},
   {"worldmap/map_indexicon_filters_up.dds", "map_indexicon_filters_up.dds"},
   {"worldmap/map_indexicon_housing_up.dds", "map_indexicon_housing_up.dds"},
   {"worldmap/map_indexicon_key_up.dds", "map_indexicon_key_up.dds"},
   {"worldmap/map_indexicon_locations_up.dds", "map_indexicon_locations_up.dds"},
   {"worldmap/map_indexicon_quests_up.dds", "map_indexicon_quests_up.dds"},
   {"crafting/jewelry_tabicon_icon_up.dds", "jewelry_tabicon_icon_up.dds"},
   {"crafting/sketches_tabicon_up.dds", "sketches_tabicon_up.dds"},
   {"crafting/sketches_tabicon_disabled.dds", "sketches_tabicon_disabled.dds"},
   {"buttons/accept_down.dds","accept_down.dds"},
   {"buttons/accept_up.dds","accept_up.dds"},
   {"buttons/button_xlarge_mousedown.dds","button_xlarge_mousedown.dds"},
   {"buttons/button_xlarge_mouseover.dds","button_xlarge_mouseover.dds"},
   {"buttons/button_xlarge_mouseup.dds","button_xlarge_mouseup.dds"},
   {"buttons/cancel_down.dds","cancel_down.dds"},
   {"buttons/cancel_up.dds","cancel_up.dds"},
   {"buttons/checkbox_checked.dds","checkbox_checked.dds"},
   {"buttons/checkbox_checked_disabled.dds","checkbox_checked_disabled.dds"},
   {"buttons/checkbox_disabled.dds","checkbox_disabled.dds"},
   {"buttons/checkbox_indeterminate.dds","checkbox_indeterminate.dds"},
   {"buttons/checkbox_unchecked.dds","checkbox_unchecked.dds"},
   {"buttons/closebutton_disabled.dds","blank.dds"},
   {"buttons/closebutton_down.dds","closebutton_down.dds"},
   {"buttons/closebutton_up.dds","closebutton_up.dds"},
   {"buttons/decline_down.dds","decline_down.dds"},
   {"buttons/decline_up.dds","decline_up.dds"},
   {"buttons/dropbox_arrow_disabled.dds","blank.dds"},
   {"buttons/dropbox_arrow_mousedown.dds","scrollbox_downarrow_down.dds"},
   {"buttons/dropbox_arrow_normal.dds","scrollbox_downarrow_up.dds"},
   {"buttons/edit_cancel_down.dds","edit_cancel_down.dds"},
   {"buttons/edit_cancel_up.dds","edit_cancel_up.dds"},
   {"buttons/edit_disabled.dds","edit_disabled.dds"},
   {"buttons/edit_down.dds","edit_down.dds"},
   {"buttons/edit_save_disabled.dds","edit_save_disabled.dds"},
   {"buttons/edit_save_down.dds","edit_save_down.dds"},
   {"buttons/edit_save_up.dds","edit_save_up.dds"},
   {"buttons/edit_up.dds","edit_up.dds"},
   {"buttons/eso_buttonlarge_disabled.dds","eso_buttonlarge_disabled.dds"},
   {"buttons/eso_buttonlarge_mouseover.dds","eso_buttonlarge_mouseover.dds"},
   {"buttons/eso_buttonlarge_normal.dds","eso_buttonlarge_normal.dds"},
   {"buttons/eso_buttonllarge_mousedown.dds","eso_buttonllarge_mousedown.dds"},
   {"buttons/large_downarrow_disabled.dds","blank.dds"},
   {"buttons/large_downarrow_down.dds","large_downarrow_down.dds"},
   {"buttons/large_downarrow_up.dds","large_downarrow_up.dds"},
   {"buttons/large_leftarrow_disabled.dds","blank.dds"},
   {"buttons/large_leftarrow_down.dds","large_leftarrow_down.dds"},
   {"buttons/large_leftarrow_up.dds","large_leftarrow_up.dds"},
   {"buttons/large_leftdoublearrow_disabled.dds","blank.dds"},
   {"buttons/large_leftdoublearrow_down.dds","large_leftdoublearrow_down.dds"},
   {"buttons/large_leftdoublearrow_up.dds","large_leftdoublearrow_up.dds"},
   {"buttons/large_rightarrow_disabled.dds","blank.dds"},
   {"buttons/large_rightarrow_down.dds","large_rightarrow_down.dds"},
   {"buttons/large_rightarrow_up.dds","large_rightarrow_up.dds"},
   {"buttons/large_rightdoublearrow_disabled.dds","blank.dds"},
   {"buttons/large_rightdoublearrow_down.dds","large_rightdoublearrow_down.dds"},
   {"buttons/large_rightdoublearrow_up.dds","large_rightdoublearrow_up.dds"},
   {"buttons/large_uparrow_disabled.dds","blank.dds"},
   {"buttons/large_uparrow_down.dds","large_uparrow_down.dds"},
   {"buttons/large_uparrow_up.dds","large_uparrow_up.dds"},
   {"buttons/leftarrow_disabled.dds","blank.dds"},
   {"buttons/leftarrow_down.dds","leftarrow_down.dds"},
   {"buttons/leftarrow_up.dds","leftarrow_up.dds"},
   {"buttons/log_out_down.dds","log_out_down.dds"},
   {"buttons/log_out_up.dds","log_out_up.dds"},
   {"buttons/minus_disabled.dds","blank.dds"},
   {"buttons/minus_down.dds","minus_down.dds"},
   {"buttons/minus_up.dds","minus_up.dds"},
   {"buttons/plus_up.dds","plus_up.dds"},
   {"buttons/plus_disabled.dds","blank.dds"},
   {"buttons/plus_down.dds","plus_down.dds"},
   {"buttons/pointsminus_disabled.dds","blank.dds"},
   {"buttons/pointsminus_down.dds","pointsminus_down.dds"},
   {"buttons/pointsminus_up.dds","pointsminus_up.dds"},
   {"buttons/pointsplus_disabled.dds","blank.dds"},
   {"buttons/pointsplus_down.dds","pointsplus_down.dds"},
   {"buttons/pointsplus_up.dds","pointsplus_up.dds"},
   {"buttons/rightarrow_disabled.dds","blank.dds"},
   {"buttons/rightarrow_down.dds","rightarrow_down.dds"},
   {"buttons/rightarrow_up.dds","rightarrow_up.dds"},
   {"buttons/scrollbox_downarrow_down.dds","scrollbox_downarrow_down.dds"},
   {"buttons/scrollbox_downarrow_up.dds","scrollbox_downarrow_up.dds"},
   {"buttons/scrollbox_downarrow_up_disabled.dds","blank.dds"},
   {"buttons/scrollbox_uparrow_down.dds","scrollbox_uparrow_down.dds"},
   {"buttons/scrollbox_uparrow_up.dds","scrollbox_uparrow_up.dds"},
   {"buttons/scrollbox_uparrow_up_disabled.dds","blank.dds"},
   {"buttons/tree_closed_down.dds","tree_closed_down.dds"},
   {"buttons/tree_closed_up.dds","tree_closed_up.dds"},
   {"buttons/tree_open_down.dds","tree_open_down.dds"},
   {"buttons/tree_open_up.dds","tree_open_up.dds"},
   {"characterwindow/swap_button_up.dds", "swap_button_up.dds"},
   {"characterwindow/swap_button_down.dds", "swap_button_down.dds"},
   {"characterwindow/swap_button_disabled.dds", "swap_button_disabled.dds"},
}

local common_bar_textures = {
   {"itemtooltip/item_chargemeter_bar_genericfill_gloss.dds", "blank.dds"},
   {"itemtooltip/item_chargemeter_bar_leadingedge_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_championbar_fill_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_championbar_leadingedge_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar30_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar30_leadingedge_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar_medium_gloss.dds", "blank.dds"},
   {"miscellaneous/gamepad/gp_dynamicbar_medium_leadingedge_gloss.dds", "blank.dds"},
   {"miscellaneous/progressbar_genericfill_gloss.dds", "blank.dds"},
   {"miscellaneous/progressbar_genericfill_leadingedge_gloss.dds", "blank.dds"},
   {"miscellaneous/timerbar_genericfill_gloss.dds", "blank.dds"},
   {"miscellaneous/timerbar_genericfill_leadingedge_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_fill_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_leadingedge_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_fill_center_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_fill_leadingedge_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_fill_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_leadingedge_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/targetbar_dynamic_fill_gloss.dds", "blank.dds"},
   {"unitattributevisualizer/targetbar_dynamic_leadingedge_gloss.dds", "blank.dds"},
}

local bar_overlay_textures = {
   {"unitattributevisualizer/attributebar_dynamic_fill_gloss.dds", "blank.dds", "attributebar_dynamic_fill_overlay.dds"},
   {"unitattributevisualizer/attributebar_dynamic_leadingedge_gloss.dds", "blank.dds", "attributebar_dynamic_leadingedge_overlay.dds"},
   {"unitattributevisualizer/attributebar_small_fill_center_gloss.dds", "blank.dds", "attributebar_small_fill_center_overlay.dds"},
   {"unitattributevisualizer/attributebar_small_fill_leadingedge_gloss.dds", "blank.dds", "attributebar_small_fill_leadingedge_overlay.dds"},
}

local bar_textures = {
   {"stats/stats_healthbar.dds", "stats_healthbar.dds", "stats_healthbar_glossy.dds"},
   {"stats/stats_magickabar.dds", "stats_magickabar.dds", "stats_magickabar_glossy.dds"},
   {"stats/stats_staminabar.dds", "stats_staminabar.dds", "stats_staminabar_glossy.dds"},
}

local darker_bar_textures = {
   {"unitattributevisualizer/attributebar_dynamic_fill.dds", "attributebar_dynamic_fill_darker.dds"},
   {"unitattributevisualizer/attributebar_dynamic_leadingedge.dds", "attributebar_dynamic_leadingedge_darker.dds"},
   {"unitattributevisualizer/attributebar_small_fill_center.dds", "attributebar_small_fill_center_darker.dds"},
   {"unitattributevisualizer/attributebar_small_fill_leadingedge.dds", "attributebar_small_fill_leadingedge_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_fill.dds", "gamepad/gp_attributebar_dynamic_fill_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_dynamic_leadingedge.dds", "gamepad/gp_attributebar_dynamic_leadingedge_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_fill_center.dds", "gamepad/gp_attributebar_small_fill_center_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_attributebar_small_fill_leadingedge.dds", "gamepad/gp_attributebar_small_fill_leadingedge_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_fill.dds", "gamepad/gp_targetbar_dynamic_fill_darker.dds"},
   {"unitattributevisualizer/gamepad/gp_targetbar_dynamic_leadingedge.dds", "gamepad/gp_targetbar_dynamic_leadingedge_darker.dds"},
   {"unitattributevisualizer/targetbar_dynamic_fill.dds", "targetbar_dynamic_fill_darker.dds"},
   {"unitattributevisualizer/targetbar_dynamic_leadingedge.dds", "targetbar_dynamic_leadingedge_darker.dds"},
}

local gamepad_grayscale_buttons = {
   {"buttons/gamepad/ps4/nav_ps4_circle.dds", "gamepad/ps4/nav_ps4_circle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_circle_hold.dds", "gamepad/ps4/nav_ps4_circle_hold.dds"},
   {"buttons/gamepad/ps4/nav_ps4_dpadrightcircle.dds", "gamepad/ps4/nav_ps4_dpadrightcircle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l1circle.dds", "gamepad/ps4/nav_ps4_l1circle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l1square.dds", "gamepad/ps4/nav_ps4_l1square.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l1triangle.dds", "gamepad/ps4/nav_ps4_l1triangle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l1x.dds", "gamepad/ps4/nav_ps4_l1x.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l2circle.dds", "gamepad/ps4/nav_ps4_l2circle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l2square.dds", "gamepad/ps4/nav_ps4_l2square.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l2triangle.dds", "gamepad/ps4/nav_ps4_l2triangle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_l2x.dds", "gamepad/ps4/nav_ps4_l2x.dds"},
   {"buttons/gamepad/ps4/nav_ps4_r1circle.dds", "gamepad/ps4/nav_ps4_r1circle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_r1square.dds", "gamepad/ps4/nav_ps4_r1square.dds"},
   {"buttons/gamepad/ps4/nav_ps4_r1triangle.dds", "gamepad/ps4/nav_ps4_r1triangle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_r1x.dds", "gamepad/ps4/nav_ps4_r1x.dds"},
   {"buttons/gamepad/ps4/nav_ps4_square.dds", "gamepad/ps4/nav_ps4_square.dds"},
   {"buttons/gamepad/ps4/nav_ps4_square_hold.dds", "gamepad/ps4/nav_ps4_square_hold.dds"},
   {"buttons/gamepad/ps4/nav_ps4_triangle.dds", "gamepad/ps4/nav_ps4_triangle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_triangle_hold.dds", "gamepad/ps4/nav_ps4_triangle_hold.dds"},
   {"buttons/gamepad/ps4/nav_ps4_trianglecircle.dds", "gamepad/ps4/nav_ps4_trianglecircle.dds"},
   {"buttons/gamepad/ps4/nav_ps4_x.dds", "gamepad/ps4/nav_ps4_x.dds"},
   {"buttons/gamepad/ps4/nav_ps4_x_hold.dds", "gamepad/ps4/nav_ps4_x_hold.dds"},
   {"buttons/gamepad/xbox/nav_xbone_a.dds", "gamepad/xbox/nav_xbone_a.dds"},
   {"buttons/gamepad/xbox/nav_xbone_a_hold.dds", "gamepad/xbox/nav_xbone_a_hold.dds"},
   {"buttons/gamepad/xbox/nav_xbone_b.dds", "gamepad/xbox/nav_xbone_b.dds"},
   {"buttons/gamepad/xbox/nav_xbone_b_hold.dds", "gamepad/xbox/nav_xbone_b_hold.dds"},
   {"buttons/gamepad/xbox/nav_xbone_dpadrightb.dds", "gamepad/xbox/nav_xbone_dpadrightb.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lba.dds", "gamepad/xbox/nav_xbone_lba.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lbb.dds", "gamepad/xbox/nav_xbone_lbb.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lbx.dds", "gamepad/xbox/nav_xbone_lbx.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lby.dds", "gamepad/xbox/nav_xbone_lby.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lta.dds", "gamepad/xbox/nav_xbone_lta.dds"},
   {"buttons/gamepad/xbox/nav_xbone_ltb.dds", "gamepad/xbox/nav_xbone_ltb.dds"},
   {"buttons/gamepad/xbox/nav_xbone_ltx.dds", "gamepad/xbox/nav_xbone_ltx.dds"},
   {"buttons/gamepad/xbox/nav_xbone_lty.dds", "gamepad/xbox/nav_xbone_lty.dds"},
   {"buttons/gamepad/xbox/nav_xbone_rba.dds", "gamepad/xbox/nav_xbone_rba.dds"},
   {"buttons/gamepad/xbox/nav_xbone_rbb.dds", "gamepad/xbox/nav_xbone_rbb.dds"},
   {"buttons/gamepad/xbox/nav_xbone_rbx.dds", "gamepad/xbox/nav_xbone_rbx.dds"},
   {"buttons/gamepad/xbox/nav_xbone_rby.dds", "gamepad/xbox/nav_xbone_rby.dds"},
   {"buttons/gamepad/xbox/nav_xbone_x.dds", "gamepad/xbox/nav_xbone_x.dds"},
   {"buttons/gamepad/xbox/nav_xbone_x_hold.dds", "gamepad/xbox/nav_xbone_x_hold.dds"},
   {"buttons/gamepad/xbox/nav_xbone_y.dds", "gamepad/xbox/nav_xbone_y.dds"},
   {"buttons/gamepad/xbox/nav_xbone_y_hold.dds", "gamepad/xbox/nav_xbone_y_hold.dds"},
   {"buttons/gamepad/xbox/nav_xbone_yb.dds", "gamepad/xbox/nav_xbone_yb.dds"},
}

local backgrounds = {
   {"chatwindow/chat_bg_center.dds", "chat_bg_center.dds", "chat_bg_center_ltp.dds"},
   {"chatwindow/chat_bg_edge.dds", "chat_bg_edge.dds", "chat_bg_edge_ltp.dds"},
   {"chatwindow/chat_minimized_mungebg.dds", "chat_minimized_mungebg.dds", "chat_minimized_mungebg_ltp.dds"},
   {"deathrecap/deathrecap_bg_left.dds", "deathrecap_bg_left.dds", "deathrecap_bg_left_ltp.dds"},
   {"deathrecap/deathrecap_bg_right.dds", "blank.dds", "blank.dds"},
   {"login/addonmanager_bg_left.dds", "addonmanager_bg_left.dds", "addonmanager_bg_left_ltp.dds"},
   {"login/addonmanager_bg_right.dds", "addonmanager_bg_right.dds", "addonmanager_bg_right_ltp.dds"},
   {"login/login_uiwindowbg_left.dds", "login_uiwindowbg_left.dds", "login_uiwindowbg_left_ltp.dds"},
   {"login/login_uiwindowbg_right.dds", "login_uiwindowbg_right.dds", "login_uiwindowbg_right_ltp.dds"},
   {"loot/loot_windowbg.dds", "loot_windowbg.dds", "loot_windowbg_ltp.dds"},
   {"miscellaneous/bottom_bar.dds", "bottom_bar.dds", "bottom_bar_ltp.dds"},
   {"miscellaneous/centerscreen_left.dds", "centerscreen_left.dds", "centerscreen_left_ltp.dds"},
   {"miscellaneous/centerscreen_right.dds", "blank.dds", "blank.dds"},
   {"miscellaneous/medium_bg_bottom.dds", "medium_bg_bottom.dds", "medium_bg_bottom_ltp.dds"},
   {"miscellaneous/medium_bg_top.dds", "medium_bg_top.dds", "medium_bg_top_ltp.dds"},
   {"miscellaneous/mungewindow_512.dds", "mungewindow_512.dds", "mungewindow_512_ltp.dds"},
   {"miscellaneous/top_bar.dds", "top_bar.dds", "top_bar_ltp.dds"},
   {"tooltips/ui-tooltipcenter.dds", "ui-tooltipcenter.dds", "ui-tooltipcenter_ltp.dds"},
   {"worldmap/map_ava_panelbg.dds", "map_ava_panelbg.dds", "map_ava_panelbg_ltp.dds"},
}

local theme_backgrounds = {
   {"tooltips/ui-border-red.dds", "ui-border.dds", "ui-border_ltp.dds"},
   {"tooltips/ui-border.dds", "ui-border.dds", "ui-border_ltp.dds"},
}

local common_compass_textures = {
   {"compass/area2frameanim_assisted_endcap.dds", "compass_endcap_squared.dds", "compass_endcap_angled.dds"},
   {"compass/area2frameanim_standard_endcap.dds", "compass_endcap_squared.dds", "compass_endcap_angled.dds"},
   {"compass/areapin2frame_ends.dds", "compass_endcap_squared.dds", "compass_endcap_angled.dds"},
}

local theme_compass_textures = {
   {"compass/compass.dds",  "compass_squared.dds", "compass_angled.dds"},
}

local theme_interactkey_textures = {
   {"miscellaneous/interactkeyframe_center.dds", "interactkeyframe_center.dds"},
   {"miscellaneous/interactkeyframe_edge.dds", "interactkeyframe_edge.dds"},
}
----------------------------------------
-- Functions
----------------------------------------
local function OnAddOnLoaded(eventCode, addOnName)
	-- Main Function
	local function duiDark()
	   ZO_ActionBar1KeybindBG:SetAlpha(0)
	   for i = 1, #common_textures do
	      RedirectTexture(eso_root .. common_textures[i][1], ui_root .. common_textures_folder .. "/" .. common_textures[i][2])
	   end
	   for i = 1, #theme_textures do
	      RedirectTexture(eso_root .. theme_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_textures[i][2])
	   end
	--   if theme == "dark" then
	--      for i = 1, #dark_textures do
	--         RedirectTexture(eso_root .. dark_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. dark_textures[i][2])
	--      end
	--   end
	   if dui.SV.Theme_Overlay == true then
	      for i = 1, #common_bar_textures do
	         RedirectTexture(eso_root .. common_bar_textures[i][1], ui_root .. common_textures_folder .. common_bar_textures[i][2])
	      end
	      for i = 1, #bar_textures do
	         RedirectTexture(eso_root .. bar_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. bar_textures[i][2])
	      end
	      for i = 1, #bar_overlay_textures do
	         RedirectTexture(eso_root .. bar_overlay_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. bar_overlay_textures[i][3])
	      end
	   elseif dui.SV.Glossy == true then
	      for i = 1, #bar_textures do
	         RedirectTexture(eso_root .. bar_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. bar_textures[i][3])
	      end
	--      for i = 1, #common_bar_textures do
	--         RedirectTexture(eso_root .. common_bar_textures[i][1], eso_root .. common_bar_textures[i][1])
	--      end
	   else
	      for i = 1, #common_bar_textures do
	         RedirectTexture(eso_root .. common_bar_textures[i][1], ui_root .. common_textures_folder .. common_bar_textures[i][2])
	      end
	      for i = 1, #bar_textures do
	         RedirectTexture(eso_root .. bar_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. bar_textures[i][2])
	      end
	      for i = 1, #bar_overlay_textures do
	         RedirectTexture(eso_root .. bar_overlay_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. bar_overlay_textures[i][2])
	      end
	   end

	   if quick_menu_color == "dark" then
	      for i = 1, #quick_menu_textures do
	         RedirectTexture(eso_root .. quick_menu_textures[i][1], ui_root .. common_textures_folder .. "/" .. quick_menu_textures[i][3])
	      end
	      RedirectTexture(eso_root .. "quickslots/quickslot_highlight_blob.dds", ui_root .. common_textures_folder .. "/" .. quickslot_highlight_blob_dark)
	   elseif quick_menu_color == "light" then
	      for i = 1, #quick_menu_textures do
	         RedirectTexture(eso_root .. quick_menu_textures[i][1], ui_root .. common_textures_folder .. "/" .. quick_menu_textures[i][4])
	      end
	      RedirectTexture(eso_root .. "quickslots/quickslot_highlight_blob.dds", ui_root .. common_textures_folder .. "/" .. quickslot_highlight_blob_light)
	   elseif quick_menu_color == "mixed" then
	      for i = 1, #quick_menu_textures do
	         RedirectTexture(eso_root .. quick_menu_textures[i][1], ui_root .. common_textures_folder .. "/" .. quick_menu_textures[i][4])
	      end
	      RedirectTexture(eso_root .. "quickslots/quickslot_highlight_blob.dds", ui_root .. common_textures_folder .. "/" .. quickslot_highlight_blob_mixed)
	   else
	      for i = 1, #quick_menu_textures do
	         RedirectTexture(eso_root .. quick_menu_textures[i][1], ui_root .. common_textures_folder .. "/" .. quick_menu_textures[i][2])
	      end
	      RedirectTexture(eso_root .. "quickslots/quickslot_highlight_blob.dds", ui_root .. common_textures_folder .. "/" .. quickslot_highlight_blob_blue)
	   end

	   if dui.SV.Gamepad_Grayscale_Buttons == true then
	      for i = 1, #gamepad_grayscale_buttons do
	         RedirectTexture(eso_root .. gamepad_grayscale_buttons[i][1], ui_root .. common_textures_folder .. "/" .. gamepad_grayscale_buttons[i][2])
	      end
	   end

	   if dui.SV.Low_Transparency_Backgrounds == true then
	      for i = 1, #backgrounds do
	         RedirectTexture(eso_root .. backgrounds[i][1], ui_root .. common_textures_folder .. "/" .. backgrounds[i][3])
	      end
	      for i = 1, #theme_backgrounds do
	         RedirectTexture(eso_root .. theme_backgrounds[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_backgrounds[i][3])
	      end
	   else
	      for i = 1, #backgrounds do
	         RedirectTexture(eso_root .. backgrounds[i][1], ui_root .. common_textures_folder .. "/" .. backgrounds[i][2])
	      end
	      for i = 1, #theme_backgrounds do
	         RedirectTexture(eso_root .. theme_backgrounds[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_backgrounds[i][2])
	      end
	   end

	   if dui.SV.Use_Icons ~= false then
	      for i = 1, #theme_icons do
	         RedirectTexture(eso_root .. theme_icons[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_icons[i][2])
	      end
	   end

	   if dui.SV.Compass_Angled == true then
	      for i = 1, #common_compass_textures do
	         RedirectTexture(eso_root .. common_compass_textures[i][1], ui_root .. common_textures_folder .. "/" .. common_compass_textures[i][3])
	      end
	      for i = 1, #theme_compass_textures do
	         RedirectTexture(eso_root .. theme_compass_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_compass_textures[i][3])
	      end
	   else
	      for i = 1, #common_compass_textures do
	         RedirectTexture(eso_root .. common_compass_textures[i][1], ui_root .. common_textures_folder .. "/" .. common_compass_textures[i][2])
	      end
	      for i = 1, #theme_compass_textures do
	         RedirectTexture(eso_root .. theme_compass_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_compass_textures[i][2])
	      end
	   end

	   if dui.SV.Interact_Key == true then
	 for i = 1, #theme_interactkey_textures do
	         RedirectTexture(eso_root .. theme_interactkey_textures[i][1], ui_root .. "theme_" .. theme .. "/" .. theme_interactkey_textures[i][2])
			end
		end

	   if dui.SV.Darker_Bars == true then
	      for i = 1, #darker_bar_textures do
	         RedirectTexture(eso_root .. darker_bar_textures[i][1], ui_root .. common_textures_folder .. "/" .. darker_bar_textures[i][2])
	      end
	   else
	      RedirectTexture(eso_root .. "unitattributevisualizer/targetbar_dynamic_fill.dds", ui_root .. common_textures_folder .. "/targetbar_dynamic_fill.dds")
	      RedirectTexture(eso_root .. "unitattributevisualizer/targetbar_dynamic_leadingedge.dds", ui_root .. common_textures_folder .. "/targetbar_dynamic_leadingedge.dds")
	   end

	   if dui.SV.Hide_Status_Meter_Background == true then
	      RedirectTexture(eso_root .. "performance/statusmetermunge.dds", ui_root .. common_textures_folder .. "/blank.dds")
	   elseif dui.SV.Darker_Bars == true then
	      RedirectTexture(eso_root .. "performance/statusmetermunge.dds", ui_root .. common_textures_folder .. "/statusmetermunge_ltp.dds")
	   else
	      RedirectTexture(eso_root .. "performance/statusmetermunge.dds", ui_root .. common_textures_folder .. "/statusmetermunge.dds")
	   end
	end
	-- End Main Function

	local function duiGroupFrame()
	   RedirectTexture(eso_root .. "unitframes/unitframe_group_right.dds", ui_root .. common_textures_folder .. "/blank.dds")
	   if dui.SV.Hide_Group_Frame_Background == true then
	      RedirectTexture(eso_root .. "unitframes/unitframe_group_left.dds", ui_root .. common_textures_folder .. "/blank.dds")
	   else
	      RedirectTexture(eso_root .. "unitframes/unitframe_group_left.dds", ui_root .. common_textures_folder .. "/unitframe_group_left.dds")
	   end
	end
   if addOnName ~= dui.appName then
      return
   end

   local defaults = {
     Icon = GetString(SI_DARKUI_DARK),
     Quick_Menu_Color = GetString(SI_DARKUI_BLUE),
     Glossy = false,
     Compass_Angled = false,
	  Interact_Key = false,
     Darker_Bars = false,
     Hide_Group_Frame_Background = false,
     Gamepad_Grayscale_Buttons = false,
     Non_Transparent_Backgrounds = false,
     Use_Icons = true,
     Smooth_Backgrounds = false,
     Quick_Menu_Skooma_Eye = false,
     Hide_Status_Meter_Background = false
   }

   dui.SV = ZO_SavedVars:NewAccountWide("DarkUI_SavedVariables", ADDON_VERSION, defaults, nil)

   if dui.SV.Icon == GetString(SI_DARKUI_LIGHT) then
      theme = "light"
   elseif dui.SV.Icon == GetString(SI_DARKUI_MIXED) then
      theme = "mixed"
   else
      theme = "dark"

   end
   if dui.SV.Quick_Menu_Color == GetString(SI_DARKUI_DARK) then
      quick_menu_color = "dark"
   elseif dui.SV.Quick_Menu_Color == GetString(SI_DARKUI_LIGHT) then
      quick_menu_color = "light"
   else
      quick_menu_color = "blue"
   end
   if dui.SV.Quick_Menu_Skooma_Eye == true then
      quickslot_highlight_blob_blue = "quickslot_highlight_blob_blue_skooma_eye.dds"
      quickslot_highlight_blob_dark = "quickslot_highlight_blob_dark_skooma_eye.dds"
      quickslot_highlight_blob_light = "quickslot_highlight_blob_light_skooma_eye.dds"
   else
      quickslot_highlight_blob_blue = "quickslot_highlight_blob_blue.dds"
      quickslot_highlight_blob_dark = "quickslot_highlight_blob_dark.dds"
      quickslot_highlight_blob_light = "quickslot_highlight_blob_light.dds"
   end
   if dui.SV.Smooth_Backgrounds == true then
      common_textures_folder = "common_textures_smooth"
   else
      common_textures_folder = "common_textures"
   end

   duiDark()
   duiGroupFrame()
   dui:initLAM()
end

----------------------------------------
-- Main
----------------------------------------
EVENT_MANAGER:RegisterForEvent(dui.appName, EVENT_ADD_ON_LOADED, OnAddOnLoaded)