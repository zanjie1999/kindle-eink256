.class Lcom/amazon/kindle/s2k/SendToKindleActivity$8;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 878
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 883
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
