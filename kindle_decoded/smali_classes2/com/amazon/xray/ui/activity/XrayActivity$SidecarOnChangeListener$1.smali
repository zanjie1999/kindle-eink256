.class Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener$1;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->onSidecarChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener$1;->this$1:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener$1;->this$1:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    iget-object v0, v0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$900(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    return-void
.end method
