.class public abstract Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;
.super Ljava/lang/Object;
.source "AbstractTableOfContentsHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthorString(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitleString(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method
