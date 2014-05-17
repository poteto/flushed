var SidemenuView = Ember.View.extend({

  click: function(e) {
    if (!$(e.target).is('a.dropdown-toggle')) {
      return this.$('#sidemenu').removeClass('sidemenu-active');
    }
  },
  mouseEnter: function() {
    return this.$('#sidemenu').addClass('sidemenu-active');
  },
  mouseLeave: function() {
    return this.$('#sidemenu').removeClass('sidemenu-active');
  }

});

export default SidemenuView;
