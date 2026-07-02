.class public final enum Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;
.super Ljava/lang/Enum;
.source "AnnotationsManagerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

.field public static final enum ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

.field public static final enum ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "ANNOTATIONS_SIDECAR_PROCESSED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    .line 13
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    return-object v0
.end method
