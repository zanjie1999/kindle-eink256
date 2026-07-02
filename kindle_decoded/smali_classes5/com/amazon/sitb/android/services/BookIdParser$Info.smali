.class public Lcom/amazon/sitb/android/services/BookIdParser$Info;
.super Ljava/lang/Object;
.source "BookIdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/services/BookIdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private isFullBook:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/sitb/android/services/BookIdParser$Info;->asin:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lcom/amazon/sitb/android/services/BookIdParser$Info;->isFullBook:Z

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/sitb/android/services/BookIdParser$Info;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public isFullBook()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/amazon/sitb/android/services/BookIdParser$Info;->isFullBook:Z

    return v0
.end method
