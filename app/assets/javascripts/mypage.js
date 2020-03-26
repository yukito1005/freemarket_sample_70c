$(function(){
  //お知らせ・やることリスト
  let InfoTodoTabs = $(".info-todo-tab");
  InfoTodoTabs.click(InfoTodoTabSwitch);

  // クラスの切り替えをtabSwitch関数で定義
  function InfoTodoTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.info-todo-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = InfoTodoTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".info-todo_content").removeClass("show").eq(index).addClass("show");
  }

  //取引中・過去の取引
  let PurchaseTabs = $(".purchase-tab");
  PurchaseTabs.click(PurchaseTabSwitch);
  
  // クラスの切り替えをtabSwitch関数で定義
  function PurchaseTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.purchase-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = PurchaseTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".purchase_content").removeClass("show").eq(index).addClass("show");
  }
  
  //出品した商品-出品中・取引中・売却済み
  let ExhibitionItemsTabs = $(".exhibition-item-tab");
  ExhibitionItemsTabs.click(ExhibitionItemsTabSwitch);
  
  // クラスの切り替えをtabSwitch関数で定義
  function ExhibitionItemsTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.exhibition-item-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    let index = ExhibitionItemsTabs.index(this);
    
    // クリックしたタブに対応するshowクラスを追加する
    $(".exhibition-item-content").removeClass("show").eq(index).addClass("show");

    //sideのnavのactiveを削除
    $('.mypage-nav-list-item').removeClass("active");

    //side_nav変数に全ての.mypage-nav-list-itemの配列を取得する
    let side_nav = $(".mypage-nav-list-item");
    
    if(index==0){
      index=5;
    }else if(index==1){
      index=6;
    }else if(index==2){
      index=7;
    }
    //クリックされたタブに応じたsideのnavに切り替える
    $(side_nav).eq(index).addClass("active");
  }

  $(".slide").on("click", function() {
    $(this).next().slideToggle('fast');
    $('ul.item-detail').not($(this).next()).slideUp();
  });


  //購入した商品-取引中・過去の取引
  let PurchaseItemsTabs = $(".purchase-item-tab");
  PurchaseItemsTabs.click(PurchaseItemsTabsSwitch);
  
  // クラスの切り替えをtabSwitch関数で定義
  function PurchaseItemsTabsSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.purchase-item-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    let index = PurchaseItemsTabs.index(this);
    
    // クリックしたタブに対応するshowクラスを追加する
    $(".purchase-item-content").removeClass("show").eq(index).addClass("show");

    //sideのnavのactiveを削除
    $('.mypage-nav-list-item').removeClass("active");

    //side_nav変数に全ての.mypage-nav-list-itemの配列を取得する
    let side_nav = $(".mypage-nav-list-item");
    
    if(index==0){
      index=8;
    }else if(index==1){
      index=9;
    }
    //クリックされたタブに応じたsideのnavに切り替える
    $(side_nav).eq(index).addClass("active");
  }




  //side
  let SideNav = $(".l-container__side__mypage-nav li");
  SideNav.click(SideNavSwitch);
  
  function SideNavSwitch() {
    // アクティブになっているものをすべて初期化の状態に戻す
    $('.active').removeClass("active");
    $('.show').removeClass("show");
    $('.initialize-active').addClass("active");
    $('.initialize-show').addClass("show");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    let index = SideNav.index(this);

    //クリックしたタブとsideの項目を連動させる
    if(index == 5){
      $('.exhibition-active').addClass("active");
      $('.exhibition-show').addClass("show");
    }else if(index == 6){
      $('.transaction-active').addClass("active");
      $('.transaction-show').addClass("show");
      index=5;
    }else if(index == 7){
      $('.sold-active').addClass("active");
      $('.sold-show').addClass("show");
      index=5;
    }else if(index == 8){
      $('.now-transaction-active').addClass("active");
      $('.now-transaction-show').addClass("show");
      index=8;
    }else if(index == 9){
      $('.past-transaction-active').addClass("active");
      $('.past-transaction-show').addClass("show");
      index=8;
    }
    
    if(index != 4  && index!=18){
      // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
      $('.mypage-nav-list-item').removeClass("active");
      $('.l-container__content').removeClass("show");
      // クリックしたタブにactiveクラスを追加
      $(this).addClass("active");
      
      //content変数に全ての.l-container__contentの配列を取得する
      let content = $(".l-container__content");
      
      //content変数の中にindexの番号とcontentの同じ配列番号にside-nav-active-show-contentを追加する
      $(content).eq(index).addClass("show");
      $(window).scrollTop(0);
    }else{
      let href = $(this).children('a').attr('href');
      // 現在のタブで開く
      location.href = href;
    };
  };
  $('.btn').click(function(){
    // クリックしたタブに対応するcredit-activeクラスを追加する
    $(".l-container__content__credit").removeClass("active").eq(1).addClass("active");
  });
});

