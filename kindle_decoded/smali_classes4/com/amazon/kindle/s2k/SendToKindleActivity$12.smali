.class Lcom/amazon/kindle/s2k/SendToKindleActivity$12;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$12;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1170
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1171
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$12;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
