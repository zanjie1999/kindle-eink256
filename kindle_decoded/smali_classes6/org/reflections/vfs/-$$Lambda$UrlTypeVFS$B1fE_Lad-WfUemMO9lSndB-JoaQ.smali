.class public final synthetic Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;

    invoke-direct {v0}, Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;-><init>()V

    sput-object v0, Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lorg/reflections/vfs/UrlTypeVFS;->lambda$adaptURL$0(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
