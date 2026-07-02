.class Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$1;
.super Landroid/database/ContentObserver;
.source "AccessibilitySpeaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Landroid/os/Handler;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$000(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)V

    return-void
.end method
