$(function(){
  //お知らせ・やることリスト
  let InfoTodoTabs = $(".info-todo-tab");
  InfoTodoTabs.click(InfoTodoTabSwitch);

  // クラスの切り替えをtabSwitch関数で定義
  function InfoTodoTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.info-todo_active').removeClass("info-todo_active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("info-todo_active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = InfoTodoTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".info-todo_content").removeClass("info-todo_show").eq(index).addClass("info-todo_show");
  }

  //取引中・過去の取引
  let PurchaseTabs = $(".purchase-tab");
  PurchaseTabs.click(PurchaseTabSwitch);
  
  // クラスの切り替えをtabSwitch関数で定義
  function PurchaseTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.purchase_active').removeClass("purchase_active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("purchase_active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = PurchaseTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".purchase_content").removeClass("purchase_show").eq(index).addClass("purchase_show");
  }
  
  //side
  let SideNav = $(".l-container__side__mypage-nav li");
  SideNav.click(SideNavSwitch);
  
  function SideNavSwitch() {
    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = SideNav.index(this);
    if(index != 4){
      // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
      $('.nav-active').removeClass("nav-active");
      $('.side-nav-active-show-content').removeClass("side-nav-active-show-content");
      // クリックしたタブにactiveクラスを追加
      $(this).addClass("nav-active");
      
      //content変数に全ての.l-container__contentの配列を取得する
      let content = $(".l-container__content");
      
      //content変数の中にindexの番号とcontentの同じ配列番号にside-nav-active-show-contentを追加する
      $(content).eq(index).addClass("side-nav-active-show-content");
      $(window).scrollTop(0);
    }else{
      let href = $(this).children('a').attr('href');
      // 現在のタブで開く
      location.href = href;
    };
  };
});

