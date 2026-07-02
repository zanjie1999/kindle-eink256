.class public abstract Lcom/audible/license/repository/db/VoucherMetadataDatabase;
.super Landroidx/room/RoomDatabase;
.source "VoucherMetadataDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

.field private static final DB_NAME:Ljava/lang/String; = "voucher_attributes.db"

.field private static volatile INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataDatabase;

.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->Companion:Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

    .line 54
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion$MIGRATION_1_2$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion$MIGRATION_1_2$1;-><init>(II)V

    sput-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataDatabase;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_1_2$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/audible/license/repository/db/VoucherMetadataDatabase;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    return-void
.end method


# virtual methods
.method public abstract voucherMetadataDao()Lcom/audible/license/repository/db/VoucherMetadataDao;
.end method
