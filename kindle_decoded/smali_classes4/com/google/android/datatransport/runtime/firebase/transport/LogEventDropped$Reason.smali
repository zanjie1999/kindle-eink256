.class public final enum Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
.super Ljava/lang/Enum;
.source "LogEventDropped.java"

# interfaces
.implements Lcom/google/firebase/encoders/proto/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;",
        ">;",
        "Lcom/google/firebase/encoders/proto/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

.field public static final enum SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 67
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v1, 0x0

    const-string v2, "REASON_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 69
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v2, 0x1

    const-string v3, "MESSAGE_TOO_OLD"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 71
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v3, 0x2

    const-string v4, "CACHE_FULL"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 73
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v4, 0x3

    const-string v5, "PAYLOAD_TOO_BIG"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 75
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v5, 0x4

    const-string v6, "MAX_RETRIES_REACHED"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 77
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v6, 0x5

    const-string v7, "INVALID_PAYLOD"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 79
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v7, 0x6

    const-string v8, "SERVER_ERROR"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 66
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v9, v8, v1

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v1, v8, v2

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v1, v8, v3

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v1, v8, v4

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v1, v8, v5

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->$VALUES:[Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .locals 1

    .line 66
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .locals 1

    .line 66
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->$VALUES:[Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->number_:I

    return v0
.end method
