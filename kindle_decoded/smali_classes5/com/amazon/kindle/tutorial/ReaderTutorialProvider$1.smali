.class Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$1;
.super Ljava/lang/Object;
.source "ReaderTutorialProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->onAccessibilityChangedEvent(Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 0

    .line 598
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$1;->val$settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$1;->val$settings:Lcom/amazon/kcp/application/UserSettingsController;

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->ACCESSIBILITY:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(ZLcom/amazon/kcp/application/UserSettingsController$CallSource;)V

    return-void
.end method
