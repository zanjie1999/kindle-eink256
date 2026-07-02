.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation
.end method
