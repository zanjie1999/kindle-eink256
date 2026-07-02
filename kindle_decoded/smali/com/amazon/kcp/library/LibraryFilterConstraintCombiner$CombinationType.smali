.class public final enum Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;
.super Ljava/lang/Enum;
.source "LibraryFilterConstraintCombiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CombinationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

.field public static final enum AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

.field public static final enum OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v1, 0x0

    const-string v2, "AND"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 26
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v2, 0x1

    const-string v3, "OR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 24
    sget-object v4, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->$VALUES:[Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->$VALUES:[Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    return-object v0
.end method
