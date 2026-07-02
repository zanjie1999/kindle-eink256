.class public Lcom/amazon/sitb/android/cache/cancel/CancelRecordFormatter;
.super Ljava/lang/Object;
.source "CancelRecordFormatter.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
        "Lcom/amazon/sitb/android/CancelRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lcom/amazon/sitb/android/CancelRecord;)Ljava/lang/String;
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/amazon/sitb/android/CancelRecord;->getTimeCached()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/sitb/android/CancelRecord;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/cancel/CancelRecordFormatter;->format(Lcom/amazon/sitb/android/CancelRecord;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
