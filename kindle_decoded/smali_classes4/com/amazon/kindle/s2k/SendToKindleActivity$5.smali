.class Lcom/amazon/kindle/s2k/SendToKindleActivity$5;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
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

    .line 760
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$5;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 763
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$5;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/s2k/STKUtils;->deleteFileInS2KCacheDirectory(Ljava/io/File;)V

    .line 764
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$5;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
