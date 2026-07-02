.class public Lcom/amazon/sitb/android/cache/StringParser;
.super Ljava/lang/Object;
.source "StringParser.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/StringParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
