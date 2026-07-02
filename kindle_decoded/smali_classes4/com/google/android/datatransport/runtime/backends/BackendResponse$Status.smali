.class public final enum Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
.super Ljava/lang/Enum;
.source "BackendResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

.field public static final enum FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

.field public static final enum INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

.field public static final enum OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

.field public static final enum TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 28
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v2, 0x1

    const-string v3, "TRANSIENT_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 29
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v3, 0x2

    const-string v4, "FATAL_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 30
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v4, 0x3

    const-string v5, "INVALID_PAYLOAD"

    invoke-direct {v0, v5, v4}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 26
    sget-object v6, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    aput-object v1, v5, v2

    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->$VALUES:[Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    .locals 1

    .line 26
    const-class v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->$VALUES:[Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    return-object v0
.end method
