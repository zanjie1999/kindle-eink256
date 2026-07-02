.class public abstract Lcom/amazon/kindle/download/manifest/ParsingResult;
.super Ljava/lang/Object;
.source "ManifestSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/ParsingResult$Success;,
        Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/download/manifest/ParsingResult;-><init>()V

    return-void
.end method
