.class public Lcom/amazon/sitb/android/cache/StringFormatter;
.super Ljava/lang/Object;
.source "StringFormatter.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
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
.method public bridge synthetic format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/StringFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
