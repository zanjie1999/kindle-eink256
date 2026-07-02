.class public final Lcom/amazon/kindle/util/PriorityUtils;
.super Ljava/lang/Object;
.source "PriorityUtils.java"


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/krx/foundation/Prioritized;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kindle/util/PriorityUtils$1;

    invoke-direct {v0}, Lcom/amazon/kindle/util/PriorityUtils$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/util/PriorityUtils;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/foundation/Prioritized;",
            ">;)V"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/amazon/kindle/util/PriorityUtils;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
