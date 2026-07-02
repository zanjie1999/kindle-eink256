.class public Lcom/amazon/kcp/reader/ReaderContextWrapper;
.super Landroid/content/ContextWrapper;
.source "ReaderContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderContextWrapper$LayoutFactory;
    }
.end annotation


# static fields
.field private static final BUTTON_TAG_NAME:Ljava/lang/String; = "Button"

.field private static final TEXT_VIEW_TAG_NAME:Ljava/lang/String; = "TextView"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderContextWrapper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "layout_inflater"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderContextWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderContextWrapper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/amazon/kcp/reader/ReaderContextWrapper$LayoutFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ReaderContextWrapper$LayoutFactory;-><init>(Lcom/amazon/kcp/reader/ReaderContextWrapper$1;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-object p1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
