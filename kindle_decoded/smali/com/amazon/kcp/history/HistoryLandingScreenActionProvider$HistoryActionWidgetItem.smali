.class Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "HistoryLandingScreenActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryActionWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->this$0:Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;-><init>(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "HistoryActionId"

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 36
    sget v0, Lcom/amazon/kcp/history/R$id;->history_action_widget_item:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->this$0:Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;

    invoke-static {p2}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->access$100(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p2

    .line 47
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    sget p2, Lcom/amazon/kcp/history/R$drawable;->ic_history_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    sget p2, Lcom/amazon/kcp/history/R$drawable;->ic_history_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    check-cast p2, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)I
    .locals 0

    const/16 p1, 0x64

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->getPriority(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kcp/history/R$string;->history:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    check-cast p2, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z
    .locals 2

    .line 66
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->this$0:Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;

    invoke-static {v0}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->access$100(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/history/HistoryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->this$0:Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;

    invoke-static {v0}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->access$100(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;->onClick(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z

    move-result p1

    return p1
.end method
