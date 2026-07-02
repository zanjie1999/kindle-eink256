.class public Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;,
        Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;,
        Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;,
        Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;,
        Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;
    }
.end annotation


# static fields
.field private static log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-object v0
.end method
