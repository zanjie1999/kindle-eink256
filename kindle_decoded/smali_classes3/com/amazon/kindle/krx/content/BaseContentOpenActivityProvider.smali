.class public abstract Lcom/amazon/kindle/krx/content/BaseContentOpenActivityProvider;
.super Ljava/lang/Object;
.source "BaseContentOpenActivityProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/ContentOpenActivityProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityForContent(Lcom/amazon/kindle/krx/content/IBook;Landroid/os/Bundle;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
