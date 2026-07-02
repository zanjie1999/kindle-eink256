.class public final Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableCategoryIdImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/CategoryId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/CategoryId;",
        ">;",
        "Lcom/audible/mobile/domain/CategoryId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/CategoryId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "id is not a valid categoryId"

    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/CategoryId;
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/audible/mobile/domain/CategoryId;->NONE:Lcom/audible/mobile/domain/CategoryId;

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
