.class public Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;
.super Lcom/amazon/krf/platform/ContentDecorationPayload;
.source "PopularHighlightContentDecorationPayload.java"


# instance fields
.field private mPopularHighlightText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationPayload;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;->mPopularHighlightText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->PopularHighlightCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object v0
.end method

.method public getPopularHighlightText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;->mPopularHighlightText:Ljava/lang/String;

    return-object v0
.end method
