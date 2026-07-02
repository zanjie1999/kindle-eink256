.class public final enum Lcom/amazon/device/sync/Tracer$Traces;
.super Ljava/lang/Enum;
.source "Tracer.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Traces"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/Tracer$Traces;",
        ">;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum DELETE_MAP:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum DELETE_MAPS:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_ENTRY_SET:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_IGNORE_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_LOAD_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_PUT:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MAP_RESET:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_CONTAINS:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_CONTAINS_ALL:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_IS_EMPTY:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_ITERATOR:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum MDC_RESET:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum OPEN_DIRECTORY:Lcom/amazon/device/sync/Tracer$Traces;

.field public static final enum OPEN_OR_CREATE_STRING_MAP:Lcom/amazon/device/sync/Tracer$Traces;


# instance fields
.field private final mExtra1Name:Ljava/lang/String;

.field private final mExtra2Name:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v1, 0x0

    const-string v2, "MAP_CLOSE"

    const-string/jumbo v3, "map.close"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

    .line 19
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v2, 0x1

    const-string v3, "MAP_PUT"

    const-string/jumbo v4, "map.put"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_PUT:Lcom/amazon/device/sync/Tracer$Traces;

    .line 20
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v3, 0x2

    const-string v4, "MAP_ENTRY_SET"

    const-string/jumbo v5, "map.entrySet"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_ENTRY_SET:Lcom/amazon/device/sync/Tracer$Traces;

    .line 21
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v4, 0x3

    const-string v5, "MAP_FLUSH"

    const-string/jumbo v6, "map.flush"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

    .line 22
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v5, 0x4

    const-string v6, "MAP_FETCH"

    const-string/jumbo v7, "map.fetch"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

    .line 23
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v6, 0x5

    const-string v7, "MAP_LOAD_CONFLICTS"

    const-string/jumbo v8, "map.getConflicts"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_LOAD_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

    .line 24
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v7, 0x6

    const-string v8, "MAP_IGNORE_CONFLICTS"

    const-string/jumbo v9, "map.ignoreConflicts"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_IGNORE_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

    .line 25
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/4 v8, 0x7

    const-string v9, "MAP_RESET"

    const-string/jumbo v10, "map.reset"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MAP_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    .line 26
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v9, 0x8

    const-string v10, "MDC_CLOSE"

    const-string/jumbo v11, "mdc.close"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

    .line 27
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v10, 0x9

    const-string v11, "MDC_FETCH"

    const-string/jumbo v12, "mdc.fetch"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

    .line 28
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v11, 0xa

    const-string v12, "MDC_FLUSH"

    const-string/jumbo v13, "mdc.flush"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

    .line 29
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v12, 0xb

    const-string v13, "MDC_RESET"

    const-string/jumbo v14, "mdc.reset"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    .line 30
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v13, 0xc

    const-string v14, "MDC_CONTAINS"

    const-string/jumbo v15, "mdc.contains"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS:Lcom/amazon/device/sync/Tracer$Traces;

    .line 31
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v14, 0xd

    const-string v15, "MDC_CONTAINS_ALL"

    const-string/jumbo v13, "mdc.containsAll"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS_ALL:Lcom/amazon/device/sync/Tracer$Traces;

    .line 32
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v13, 0xe

    const-string v15, "MDC_ITERATOR"

    const-string/jumbo v14, "mdc.iterator"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_ITERATOR:Lcom/amazon/device/sync/Tracer$Traces;

    .line 33
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v14, 0xf

    const-string v15, "MDC_IS_EMPTY"

    const-string/jumbo v13, "mdc.isEmpty"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->MDC_IS_EMPTY:Lcom/amazon/device/sync/Tracer$Traces;

    .line 34
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v13, 0x10

    const-string v15, "OPEN_DIRECTORY"

    const-string/jumbo v14, "sds.openDirectory"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_DIRECTORY:Lcom/amazon/device/sync/Tracer$Traces;

    .line 35
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v14, 0x11

    const-string v15, "OPEN_OR_CREATE_STRING_MAP"

    const-string/jumbo v13, "sds.openOrCreateStringMap"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_OR_CREATE_STRING_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    .line 36
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v13, 0x12

    const-string v15, "DELETE_MAP"

    const-string/jumbo v14, "sds.deleteMap"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->DELETE_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    .line 37
    new-instance v0, Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v14, 0x13

    const-string v15, "DELETE_MAPS"

    const-string/jumbo v13, "sds.deleteMaps"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/Tracer$Traces;->DELETE_MAPS:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v13, 0x14

    new-array v13, v13, [Lcom/amazon/device/sync/Tracer$Traces;

    .line 16
    sget-object v15, Lcom/amazon/device/sync/Tracer$Traces;->MAP_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_PUT:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_ENTRY_SET:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_LOAD_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_IGNORE_CONFLICTS:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CLOSE:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_FETCH:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_FLUSH:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS_ALL:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_ITERATOR:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_IS_EMPTY:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_DIRECTORY:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_OR_CREATE_STRING_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->DELETE_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/device/sync/Tracer$Traces;->$VALUES:[Lcom/amazon/device/sync/Tracer$Traces;

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

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/Tracer$Traces;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/amazon/device/sync/Tracer$Traces;->mName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/amazon/device/sync/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/amazon/device/sync/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/Tracer$Traces;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/device/sync/Tracer$Traces;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/Tracer$Traces;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/Tracer$Traces;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/device/sync/Tracer$Traces;->$VALUES:[Lcom/amazon/device/sync/Tracer$Traces;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/Tracer$Traces;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/Tracer$Traces;

    return-object v0
.end method


# virtual methods
.method public getExtra1Name()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/device/sync/Tracer$Traces;->mExtra1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2Name()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/device/sync/Tracer$Traces;->mExtra2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/device/sync/Tracer$Traces;->mName:Ljava/lang/String;

    return-object v0
.end method
