.class Lcom/amazon/kindle/s2k/SendToKindleActivity$11;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    iput-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1152
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2100(Lcom/amazon/kindle/s2k/SendToKindleActivity;Landroid/app/AlertDialog;)V

    return-void
.end method
