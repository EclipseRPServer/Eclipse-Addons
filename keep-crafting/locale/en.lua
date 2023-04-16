local Translations = {
     error = {
          need_more_exp = 'You need to have more experience to make this item!',
          need_more_mat = 'You dont have enough materials',
          crafting_is_restricted = 'Crafting this item is restricted.',
          crafting_failed = 'Crafting Failed! ^.^',
          not_authorized = 'You are not authorized to do this'
     },
     success = {
          successful_crafting = 'crafting was successful'
     },
     info = {
          mr = 'Mr.',
          mrs = 'Mrs.',
     },
     mail = {
          sender = 'Crafting Company',
          subject = 'Materials list',
          message = 'Dear %s %s, List of materials you need to craft (%s)\n\n Success rate: %d\n Restricted: %s \n',
          level = '\n Level: %s ',
          yes = 'Yes',
          no = 'No',
          tnx_message = '\n\n We are happy to have you!',
          materials_list_header = '\n\n Materials list:',
          materials_list = '\n - %s %dx'
     },
     menu = {
          back = 'Back',
          leave = 'Leave',
          player_crafting_information = 'Your Crafting Information',
          -- craft menu
          item_name = 'Item Name',
          craft = 'Craft',
          check_mat_list = 'Check Materials List',

          -- player crafting information menu
          your_name = 'Your Name',
          your_job = 'Your Job',
          job_sub = 'Name: %s | Grade: %s',
          crafting_exp = 'Your Crafting exp',

          -- main menu
          main_menu_header = 'Crafting Workbench'
     }
}

Lang = Locale:new({
     phrases = Translations,
     warnOnMissing = true
})
