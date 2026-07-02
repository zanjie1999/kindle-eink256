.class public final enum Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;
.super Ljava/lang/Enum;
.source "AnnotationManagerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/AnnotationManagerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

.field public static final enum ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

.field public static final enum ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

.field public static final enum ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "ANNOTATIONS_READ_FROM_SIDECAR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "ANNOTATIONS_NEED_REFRESH"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "ANNOTATIONS_ADDED_REMOVED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    .line 15
    sget-object v5, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    return-object v0
.end method
