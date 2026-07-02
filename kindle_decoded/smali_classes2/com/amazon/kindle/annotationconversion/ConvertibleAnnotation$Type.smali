.class public final enum Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;
.super Ljava/lang/Enum;
.source "ConvertibleAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

.field public static final enum LAST_PAGE_READ:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;


# instance fields
.field private final isRange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    const/4 v1, 0x0

    const-string v2, "LAST_PAGE_READ"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->LAST_PAGE_READ:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    aput-object v0, v2, v1

    .line 15
    sput-object v2, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->$VALUES:[Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-boolean p3, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->isRange:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->isRange:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->$VALUES:[Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    return-object v0
.end method
