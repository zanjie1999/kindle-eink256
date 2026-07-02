.class public final enum Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;
.super Ljava/lang/Enum;
.source "IAnnotationItem.java"

# interfaces
.implements Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$IAttributeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;",
        ">;",
        "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$IAttributeType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum Begin:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum BookText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum Clip:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum Color:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum End:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum Star:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

.field public static final enum UserText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v1, 0x0

    const-string v2, "Begin"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Begin:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v2, 0x1

    const-string v3, "End"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->End:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v3, 0x2

    const-string v4, "BookText"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->BookText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v4, 0x3

    const-string v5, "UserText"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->UserText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v5, 0x4

    const-string v6, "Star"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Star:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v6, 0x5

    const-string v7, "Color"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Color:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    new-instance v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v7, 0x6

    const-string v8, "Clip"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Clip:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    .line 31
    sget-object v9, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Begin:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->End:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->BookText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->UserText:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Star:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->Color:Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->$VALUES:[Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->$VALUES:[Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;

    return-object v0
.end method
