<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SubCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SubCategory';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SubCategory());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('category_id', __('Category id'));
        $grid->column('image', __('Image'));
        $grid->column('desc', __('Desc'));
        $grid->column('slug', __('Slug'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(SubCategory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('category_id', __('Category id'));
        $show->field('image', __('Image'));
        $show->field('desc', __('Desc'));
        $show->field('slug', __('Slug'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new SubCategory());

        $form->text('name', __('Name'));
        $form->select('category_id', __('Category id'))->options(Category::all()->pluck('name', 'id'));
        $form->image('image', __('Image'));
        $form->textarea('desc', __('Desc'));
        $form->text('slug', __('Slug'));

        return $form;
    }
}
