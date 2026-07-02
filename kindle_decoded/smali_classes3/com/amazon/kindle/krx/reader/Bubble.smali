.class public Lcom/amazon/kindle/krx/reader/Bubble;
.super Lcom/amazon/kindle/krx/reader/BaseBubble;
.source "Bubble.java"


# instance fields
.field private contents:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseBubble;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/Bubble;->contents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/Bubble;->contents:Landroid/view/View;

    return-object v0
.end method
