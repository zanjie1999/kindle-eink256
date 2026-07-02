.class public Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final BUTTON_PADDING:I = 0x12

.field private static final MOCK_KU_BOOKS:Ljava/lang/String; = "{\"books\":[{\"asin\":\"B01L63MUGG\",\"author\":\"Blair, E.K.\",\"title\":\"Author Anonymous: A True Story\"},{\"asin\":\"B014AO0C9K\",\"author\":\"Foster, John\",\"title\":\"Hillary Clinton: The Top 25 Reasons She Should Not Be Elected President (Revised 2nd Edition)\"},{\"asin\":\"B006Z499M0\",\"author\":\"Stoller, Fred\",\"title\":\"My Seinfeld Year (Kindle Single)\"},{\"asin\":\"B0060ANFPG\",\"author\":\"Shubaly, Mishka\",\"title\":\"The Long Run (Kindle Single)\"},{\"asin\":\"B00AHP5NY6\",\"author\":\"George Takei\",\"title\":\"Oh Myyy! - There Goes The Internet (Life, the Internet and Everything Book 1)\"},{\"asin\":\"B008L4KRCS\",\"author\":\"Marshall, Penny\",\"title\":\"My Mother Was Nuts\"},{\"asin\":\"B00ONDNQYW\",\"author\":\"Mabry, Donna Foley\",\"title\":\"Maude\"},{\"asin\":\"B002UM5BXW\",\"author\":\"Bourdain, Anthony\",\"title\":\"Kitchen Confidential\"},{\"asin\":\"B003WUYE66\",\"author\":\"Sobel, Dava\",\"title\":\"Longitude: The True Story of a Lone Genius Who Solved the Greatest Scientific Problem of His Time\"},{\"asin\":\"B00B77UDXO\",\"author\":\"Miller, Kimberly Rae\",\"title\":\"Coming Clean: A Memoir\"}]}"

.field private static final PAGE_PADDING:I = 0xf


# instance fields
.field private final buttonRunnableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->buttonRunnableMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->clearSharedPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->mockKuBooks(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->showSubscriptionInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/view/ViewGroup;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->setUpDebugMenu(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private addButton(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 102
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->buttonRunnableMap:Ljava/util/Map;

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x12

    .line 106
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private clearSharedPreferences()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KuConversionPreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "CapturedBooks"

    .line 150
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "KuInterstitialPageShown"

    .line 151
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "NeverShowKuInterstitialPage"

    .line 152
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "CapturedBooksTimestamp"

    .line 153
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->getInstance()Lcom/amazon/ku/KuInterstitialPageController;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/ku/KuContentManager;->getInstance()Lcom/amazon/ku/KuContentManager;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Cleared SharedPreferences: CapturedBooks, CapturedBooksTimestamp, KuInterstitialPageShown, NeverShowKuInterstitialPage"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private mockKuBooks(Landroid/content/Context;)V
    .locals 8

    .line 176
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 177
    const-class v1, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

    const-string/jumbo v2, "{\"books\":[{\"asin\":\"B01L63MUGG\",\"author\":\"Blair, E.K.\",\"title\":\"Author Anonymous: A True Story\"},{\"asin\":\"B014AO0C9K\",\"author\":\"Foster, John\",\"title\":\"Hillary Clinton: The Top 25 Reasons She Should Not Be Elected President (Revised 2nd Edition)\"},{\"asin\":\"B006Z499M0\",\"author\":\"Stoller, Fred\",\"title\":\"My Seinfeld Year (Kindle Single)\"},{\"asin\":\"B0060ANFPG\",\"author\":\"Shubaly, Mishka\",\"title\":\"The Long Run (Kindle Single)\"},{\"asin\":\"B00AHP5NY6\",\"author\":\"George Takei\",\"title\":\"Oh Myyy! - There Goes The Internet (Life, the Internet and Everything Book 1)\"},{\"asin\":\"B008L4KRCS\",\"author\":\"Marshall, Penny\",\"title\":\"My Mother Was Nuts\"},{\"asin\":\"B00ONDNQYW\",\"author\":\"Mabry, Donna Foley\",\"title\":\"Maude\"},{\"asin\":\"B002UM5BXW\",\"author\":\"Bourdain, Anthony\",\"title\":\"Kitchen Confidential\"},{\"asin\":\"B003WUYE66\",\"author\":\"Sobel, Dava\",\"title\":\"Longitude: The True Story of a Lone Genius Who Solved the Greatest Scientific Problem of His Time\"},{\"asin\":\"B00B77UDXO\",\"author\":\"Miller, Kimberly Rae\",\"title\":\"Coming Clean: A Memoir\"}]}"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

    .line 180
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/CharSequence;

    const-string v3, "1"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "2"

    const/4 v5, 0x1

    aput-object v3, p1, v5

    const/4 v3, 0x2

    const-string v6, "3"

    aput-object v6, p1, v3

    const/4 v3, 0x3

    const-string v6, "4"

    aput-object v6, p1, v3

    const/4 v3, 0x4

    const-string v6, "5"

    aput-object v6, p1, v3

    const-string v3, "6"

    const/4 v6, 0x5

    aput-object v3, p1, v6

    const/4 v3, 0x6

    const-string v7, "7"

    aput-object v7, p1, v3

    const/4 v3, 0x7

    const-string v7, "8"

    aput-object v7, p1, v3

    const/16 v3, 0x8

    const-string v7, "9"

    aput-object v7, p1, v3

    const/16 v3, 0x9

    const-string v7, "10"

    aput-object v7, p1, v3

    new-array v3, v5, [I

    aput v6, v3, v4

    const-string v6, "Number of Mock Books"

    .line 183
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    aget v4, v3, v4

    sub-int/2addr v4, v5

    new-instance v5, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$6;

    invoke-direct {v5, p0, v3}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$6;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;[I)V

    invoke-virtual {v2, p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    new-instance p1, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;

    invoke-direct {p1, p0, v1, v3, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;[ILcom/google/gson/Gson;)V

    const-string v0, "OK"

    invoke-virtual {v2, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setUpDebugMenu(Landroid/view/ViewGroup;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$1;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;)V

    const-string v1, "Clear SharedPreferences"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->addButton(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 61
    new-instance v0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/view/ViewGroup;)V

    const-string v1, "Mock Clawed-Back Books"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->addButton(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    new-instance v0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$3;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/view/ViewGroup;)V

    const-string v1, "Show KuSubscriptionInfo"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->addButton(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSubscriptionInfo(Landroid/content/Context;)V
    .locals 3

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    new-instance v2, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;JLandroid/content/Context;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;

    invoke-direct {v0, v2}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;-><init>(Lcom/amazon/ku/service/ResponseListener;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->buttonRunnableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
