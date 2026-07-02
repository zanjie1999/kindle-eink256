.class public Lcom/amazon/kindle/dictionary/MobiDictionaryStore;
.super Ljava/lang/Object;
.source "MobiDictionaryStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dispose(J)V
.end method

.method public static native getDictionaryByIKindleDocument(J)J
.end method

.method public static native getMobiDictionary(Ljava/lang/String;Lcom/amazon/kindle/dictionary/ErrorValue;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/dictionary/ErrorValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method
