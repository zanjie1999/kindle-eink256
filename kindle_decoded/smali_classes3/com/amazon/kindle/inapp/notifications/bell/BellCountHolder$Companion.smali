.class public final Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;
.super Ljava/lang/Object;
.source "BellCountHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBellCountHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BellCountHolder.kt\ncom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion\n*L\n1#1,33:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "instance"

    const-string v4, "getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    return-object v0
.end method
