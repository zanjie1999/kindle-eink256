.class Lcom/amazon/kcp/debug/DebugActivity$32;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onChangeDictionaryLanguage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$languages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;[Ljava/lang/String;)V
    .locals 0

    .line 1525
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$32;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$32;->val$languages:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1529
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$32;->val$languages:[Ljava/lang/String;

    aget-object p1, p1, p2

    .line 1530
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setDictionaryLanguage(Ljava/lang/String;)V

    return-void
.end method
