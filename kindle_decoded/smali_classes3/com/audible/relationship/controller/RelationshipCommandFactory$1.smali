.class synthetic Lcom/audible/relationship/controller/RelationshipCommandFactory$1;
.super Ljava/lang/Object;
.source "RelationshipCommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/relationship/controller/RelationshipCommandFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$relationship$domain$RelationshipRequest$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/audible/relationship/domain/RelationshipRequest$Type;->values()[Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/relationship/controller/RelationshipCommandFactory$1;->$SwitchMap$com$audible$relationship$domain$RelationshipRequest$Type:[I

    :try_start_0
    sget-object v1, Lcom/audible/relationship/domain/RelationshipRequest$Type;->PAGING_REQUEST:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/relationship/controller/RelationshipCommandFactory$1;->$SwitchMap$com$audible$relationship$domain$RelationshipRequest$Type:[I

    sget-object v1, Lcom/audible/relationship/domain/RelationshipRequest$Type;->ASIN_REQUEST:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
