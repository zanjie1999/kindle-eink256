.class public abstract Lcom/amazon/kindle/download/ManifestProviderException;
.super Ljava/lang/RuntimeException;
.source "Exceptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;,
        Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;,
        Lcom/amazon/kindle/download/ManifestProviderException$InternalException;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/ManifestProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
