.class public Lcom/amazon/kindle/com/amazonaws/transform/VoidJsonUnmarshaller;
.super Ljava/lang/Object;
.source "VoidJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "TT;",
        "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/VoidJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
