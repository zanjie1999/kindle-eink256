.class public Lcom/amazon/kcp/search/ReaderBookSearchResultGroup;
.super Ljava/lang/Object;
.source "ReaderBookSearchResultGroup.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchResultGroup;


# instance fields
.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchResultGroup;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchResultGroup;->title:Ljava/lang/String;

    return-object p1
.end method
