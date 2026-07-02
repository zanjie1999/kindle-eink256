.class public Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;
.super Ljava/lang/Object;
.source "XrayPlugin.java"

# interfaces
.implements Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/XrayPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SidecarOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/plugin/XrayPlugin;


# direct methods
.method protected constructor <init>(Lcom/amazon/xray/plugin/XrayPlugin;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSidecarChanged(Ljava/lang/String;)V
    .locals 2

    .line 350
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-virtual {p1, v0}, Lcom/amazon/xray/plugin/XrayPlugin;->refreshSidecarAndButtonStatus(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method
