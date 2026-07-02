.class public final Lcom/audible/mobile/domain/ImmutableAsinImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableAsinImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/Asin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/Asin;",
        ">;",
        "Lcom/audible/mobile/domain/Asin;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    const-string v0, "id is not a valid asin"

    .line 54
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->validAsin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object p0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
