.class Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataExpression"
.end annotation


# instance fields
.field public expression:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public targetDepth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    .line 250
    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    .line 251
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    return-void
.end method
