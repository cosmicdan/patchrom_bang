.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# instance fields
.field private final mShaderA:Landroid/graphics/Shader;

.field private final mShaderB:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate2(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p1, Landroid/graphics/Shader;->native_shader:I

    iget v2, p2, Landroid/graphics/Shader;->native_shader:I

    iget v3, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_shader:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    iget v3, p1, Landroid/graphics/Shader;->native_instance:I

    iget v4, p2, Landroid/graphics/Shader;->native_instance:I

    if-eqz p3, :cond_1

    iget v1, p3, Landroid/graphics/Xfermode;->native_instance:I

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/graphics/ComposeShader;->nativeCreate1(III)I

    move-result v1

    iput v1, p0, Landroid/graphics/Shader;->native_instance:I

    instance-of v1, p3, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_2

    check-cast p3, Landroid/graphics/PorterDuffXfermode;

    iget-object v0, p3, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v3, p1, Landroid/graphics/Shader;->native_shader:I

    iget v4, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    :cond_0
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/Shader;->native_shader:I

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v3, p1, Landroid/graphics/Shader;->native_shader:I

    iget v4, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz p3, :cond_3

    iget v2, p3, Landroid/graphics/Xfermode;->native_instance:I

    :cond_3
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/ComposeShader;->nativePostCreate1(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/Shader;->native_shader:I

    goto :goto_1
.end method

.method private static native nativeCreate1(III)I
.end method

.method private static native nativeCreate2(III)I
.end method

.method private static native nativePostCreate1(IIII)I
.end method

.method private static native nativePostCreate2(IIII)I
.end method
