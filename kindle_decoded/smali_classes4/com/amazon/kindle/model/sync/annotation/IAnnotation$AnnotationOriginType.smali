.class public final enum Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;
.super Ljava/lang/Enum;
.source "IAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnnotationOriginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

.field public static final enum CREATED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

.field public static final enum LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

.field public static final enum NONE:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v1, 0x0

    const-string v2, "CREATED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->CREATED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v2, 0x1

    const-string v3, "LOADED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->NONE:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    .line 21
    sget-object v5, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->CREATED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->$VALUES:[Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->$VALUES:[Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    return-object v0
.end method
