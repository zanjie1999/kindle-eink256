.class public final synthetic Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;

    invoke-direct {v0}, Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;-><init>()V

    sput-object v0, Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;

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

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-static {p1}, Lorg/reflections/vfs/ZipDir;->lambda$null$0(Ljava/util/zip/ZipEntry;)Z

    move-result p1

    return p1
.end method
