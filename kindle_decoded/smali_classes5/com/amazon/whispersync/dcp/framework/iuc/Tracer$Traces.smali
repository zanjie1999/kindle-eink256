.class public final enum Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;
.super Ljava/lang/Enum;
.source "Tracer.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Traces"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;",
        ">;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum CLOSE_OUTPUT_STREAM:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum CONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum DISCONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum FLUSH:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum GET_RESPONSE_CODE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum READ:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum WAIT_FOR_CONNECTIVITY:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

.field public static final enum WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;


# instance fields
.field private final mExtra1Name:Ljava/lang/String;

.field private final mExtra2Name:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v1, 0x0

    const-string v2, "WAIT_FOR_CONNECTIVITY"

    const-string/jumbo v3, "wait_for_connectivity"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WAIT_FOR_CONNECTIVITY:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v2, 0x1

    const-string v3, "CONNECT"

    const-string v4, "connect"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->CONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v3, 0x2

    const-string v4, "WRITE"

    const-string/jumbo v5, "write"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v4, 0x3

    const-string v5, "FLUSH"

    const-string v6, "flush"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->FLUSH:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v5, 0x4

    const-string v6, "GET_RESPONSE_CODE"

    const-string v7, "getResponseCode"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->GET_RESPONSE_CODE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v6, 0x5

    const-string v7, "READ"

    const-string/jumbo v8, "read"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->READ:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v7, 0x6

    const-string v8, "DISCONNECT"

    const-string v9, "disconnect"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->DISCONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 24
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/4 v8, 0x7

    const-string v9, "CLOSE_OUTPUT_STREAM"

    const-string v10, "close_output_stream"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->CLOSE_OUTPUT_STREAM:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    .line 15
    sget-object v10, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WAIT_FOR_CONNECTIVITY:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->CONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->FLUSH:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->GET_RESPONSE_CODE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->READ:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->DISCONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v4, "stage"

    const-string/jumbo v5, "thread"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    return-object v0
.end method


# virtual methods
.method public getExtra1Name()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2Name()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->mName:Ljava/lang/String;

    return-object v0
.end method
