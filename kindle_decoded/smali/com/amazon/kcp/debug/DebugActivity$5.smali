.class Lcom/amazon/kcp/debug/DebugActivity$5;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$5;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$5;->val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 363
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$5;->val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->setForceFailUpdatesBeforeSwap(Z)V

    return-void
.end method
