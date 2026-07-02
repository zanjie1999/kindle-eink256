.class public final Lcom/audible/mobile/network/models/common/Button;
.super Ljava/lang/Object;
.source "Button.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/Button$Creator;,
        Lcom/audible/mobile/network/models/common/Button$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Button.kt\ncom/audible/mobile/network/models/common/Button\n*L\n1#1,45:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final accessibilityHint:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final type:Lcom/audible/mobile/network/models/common/Button$Type;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/Button$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/Button$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/Button;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/network/models/common/Button;-><init>(Lcom/audible/mobile/network/models/common/Button$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/network/models/common/Button$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/Button;->type:Lcom/audible/mobile/network/models/common/Button$Type;

    iput-object p2, p0, Lcom/audible/mobile/network/models/common/Button;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/Button;->accessibilityHint:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/Button;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/mobile/network/models/common/Button$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 12
    sget-object p1, Lcom/audible/mobile/network/models/common/Button$Type;->UNKNOWN:Lcom/audible/mobile/network/models/common/Button$Type;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 21
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/mobile/network/models/common/Button;-><init>(Lcom/audible/mobile/network/models/common/Button$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Button;->type:Lcom/audible/mobile/network/models/common/Button$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Button;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Button;->accessibilityHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Button;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
