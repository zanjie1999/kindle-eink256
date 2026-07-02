.class public final enum Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;
.super Ljava/lang/Enum;
.source "Tracer.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Traces"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;",
        ">;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

.field public static final enum JSON_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

.field public static final enum JSON_PARSING_REQUEST:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

.field public static final enum JSON_PARSING_RESPONSE:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

.field public static final enum RAW_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

.field public static final enum REQUEST_TO_THREAD:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;


# instance fields
.field private final mExtra1Name:Ljava/lang/String;

.field private final mExtra2Name:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v6, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const-string v1, "REQUEST_TO_THREAD"

    const/4 v2, 0x0

    const-string/jumbo v3, "request2thread"

    const-string v4, "none"

    const-string/jumbo v5, "thread"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->REQUEST_TO_THREAD:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v1, 0x1

    const-string v2, "JSON_EXECUTION"

    const-string v3, "json_execution"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v2, 0x2

    const-string v3, "JSON_PARSING_REQUEST"

    const-string/jumbo v4, "parsing_request"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_REQUEST:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v3, 0x3

    const-string v4, "JSON_PARSING_RESPONSE"

    const-string/jumbo v5, "parsing_response"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_RESPONSE:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v4, 0x4

    const-string v5, "RAW_EXECUTION"

    const-string/jumbo v6, "raw_execution"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->RAW_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    .line 14
    sget-object v6, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->REQUEST_TO_THREAD:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_REQUEST:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_RESPONSE:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

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

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    return-object v0
.end method


# virtual methods
.method public getExtra1Name()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2Name()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->mName:Ljava/lang/String;

    return-object v0
.end method
